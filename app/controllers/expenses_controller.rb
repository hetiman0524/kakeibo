class  ExpensesController < ApplicationController
  def new
    @month = Month.new
    @expense_content = ExpenseContent.new
  end

  def create
    @expense_content = ExpenseContent.create!(category_params)
    redirect_to expense_path(@expense_content.month_id)
  end
  
  

  def show
    @months = Month.all
    @month = Month.find(params[:id])
    @user = current_user.id

    @expense_categories = ExpenseCategory.all
    @expense_categories_hash = {}
    @expense_categories_hash_show = {}
    #/if (params[:content_id] != nil) && (params[:content_id].exists?)
    #end
    @expense_categories.each do |expense_category|
      if expense_category.expense_contents.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        expense_category_total_chart = expense_category.expense_contents.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @expense_categories_hash[:"#{expense_category.name}"] = [expense_category_total_chart, expense_category]
      end
    end
    @income = IncomeContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    @expense = ExpenseContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
  end

  private
  def category_params
    params.require(:expense_content).permit(:expense_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
