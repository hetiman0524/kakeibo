class  ContentsController < ApplicationController
  def new
    @month = Month.new
    @expense_content = ExpenseContent.new
  end

  def create
    @expense_content = ExpenseContent.create!(category_params)
    redirect_to content_path(@expense_content.month_id)
  end
  
  

  def show
    
    @months = Month.all
    @month = Month.find(params[:id])
    
    @user = current_user.id

    @categories = Category.all
    @categories_hash = {}
    @categories_hash_show = {}
    #/if (params[:content_id] != nil) && (params[:content_id].exists?)
    #@expense_content = ExpenseContent.find(params[:content_id])
    #end
    @categories.each do |category|
      if category.expense_contents.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        category_total_chart = category.expense_contents.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @categories_hash[:"#{category.name}"] = [category_total_chart, category]
      end
    end
    @income = IncomeContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    @expense = ExpenseContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
  end

  private
  def category_params
    params.require(:expense_content).permit(:category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
