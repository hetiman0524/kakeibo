class ContentsController < ApplicationController
  def new
    @month = Month.new
    @content = Content.new
  end

  def create
    @content = Content.create!(category_params)
    redirect_to root_path
  end

  def show
  @months = Month.all
  @month = Month.find(params[:id])
  
  @user = current_user.id

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

  private
  def category_params
    params.require(:content).permit(:category_id, :day, :content, :money).merge(user_id: current_user.id)
  end
end
