class ExpenseContentsController < ApplicationController
  def edit
    @month =  Month.find(params[:expense_id])
    @expense_content = ExpenseContent.where("month_id = #{@month.id}")
  end

  def update
    expense_content = ExpenseContent.find(params[:id])
    expense_content.update(expense_params)
  end

  def destroy
  end

  private
  def expense_params
    params.require(:expense_content).permit(:expense_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
