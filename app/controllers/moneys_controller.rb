class MoneysController < ApplicationController
  before_action :month_set
  before_action :user_set
  


  def income
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
  
  def expense
    @categories = Category.all
    @categories_hash = {}
    @categories_hash_show = {}
    @categories.each do |category|
      if category.contents.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        category_total_chart = category.contents.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @categories_hash[:"#{category.name}"] = [category_total_chart, category]
      end
    end
    @income = Income.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
    @expense = Content.where("month_id = #{@month.id}").where("user_id = #{@user}").sum(:money).to_i
  end

  def cash_flow
  end

  
  private
  def month_set
    @months = Month.all
    @month = Month.find(params[:id])
  end

  def user_set
    @user = current_user.id
  end

end
