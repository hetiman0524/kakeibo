class IncomeContentsController < ApplicationController
  def edit
    @income_content = IncomeContent.find(params[:id])
  end

  def update
    income_content = IncomeContent.find(params[:id])
    income_content.update(income_params)
    redirect_to income_path(income_content.month_id)
  end

  def destroy
    income_content = IncomeContent.find(params[:id])
    income_content.destroy
    redirect_to income_path(income_content.month_id)
  end

  private
  def income_params
    params.require(:income_content).permit(:income_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
