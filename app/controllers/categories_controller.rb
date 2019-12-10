class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    #@content = Content.find_by(category_id: ).money
    @months = Month.all
    @month = Month.find_by(params[:id])
    @categories_hash = {}
    @categories.each do |category|
      if category.contents.where("month_id = #{1}").length >= 1
        category_total_chart = category.contents.where("month_id = #{1}").collect{ |con| con.money.to_i }.sum
        @categories_hash[:"#{category.name}"] = category_total_chart
      end
    end
  end

  def new
    @category = Category.new
    @month = Month.new
    @content = Content.new
  end

  def create
    category_id = Category.where(name: category_params[:name])[0].id
    content = category_params[:content]
    user_id = category_params[:user_id]
    @content = Content.create!(
      category_id: category_id, month_id: content[:month], content: content[:content],
      money: content[:money], user_id: user_id
    )
     redirect_to root_path(@category)
  end

  def category_params
    params.require(:category).permit(:name, content: [:month, :content, :money]).merge(user_id: current_user.id)
  end
end
