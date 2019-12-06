class MonthsController < ApplicationController
  def index
    @months = Month.all
    @month = Month.find_by(params[:id])
  end

  def show
    @months = Month.all
    @user = current_user.id
    @month = Month.find(params[:id])
    @categories = Category.all
    @categories_hash = {}
    @categories.each do |category|
      if category.contents.where("month_id = #{@month.id}").length >= 1
        #各月の合計金額
        category_total_chart = category.contents.where("month_id = #{@month.id}").where("user_id = #{@user}").collect{ |con| con.money.to_i }.sum
        @categories_hash[:"#{category.name}"] = [category_total_chart, category]
      end
    end
    @categories_hash_show = {}
  end
end
