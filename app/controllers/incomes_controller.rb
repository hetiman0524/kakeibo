class IncomesController < ApplicationController
  
  def new
    @month = Month.new
    @income_content = IncomeContent.new
  end

  def create
    @income_content = IncomeContent.create!(income_category_params)
     redirect_to income_path(@income_content.month_id)
  end

  def show
    @months = Month.all
    @month = Month.find(params[:id])

    @user = current_user.id
    
    @income_categories = IncomeCategory.all
    @income_categories_hash = {}
    @income_categories_hash_show = {}
    @income_categories.each do |income_category|
      if income_category.income_contents.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        income_category_total_chart = income_category.income_contents.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @income_categories_hash[:"#{income_category.name}"] = [income_category_total_chart, income_category]
      end
    end
    @income = IncomeContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    @expense = ExpenseContent.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    
  end
  
  private
  def income_category_params
    params.require(:income_content).permit(:income_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
