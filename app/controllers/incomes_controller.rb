class IncomesController < ApplicationController
  
  def new
    @month = Month.new
    @income = Income.new
  end

  def create
    @income = Income.create!(income_category_params)
     redirect_to root_path(@category)
  end

  def show
    @months = Month.all
    @month = Month.find(params[:id])

    @user = current_user.id

    @income_categories = IncomeCategory.all
    @income_categories_hash = {}
    @income_categories_hash_show = {}
    @income_categories.each do |income_category|
      if income_category.incomes.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        income_category_total_chart = income_category.incomes.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @income_categories_hash[:"#{income_category.name}"] = [income_category_total_chart, income_category]
      end
    end
    @income = Income.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    @expense = Content.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
  end
  
  private
  def income_category_params
    params.require(:income).permit(:income_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
