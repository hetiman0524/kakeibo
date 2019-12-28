class ExpenseContentsController < ApplicationController
  def edit
    @expense_content = ExpenseContent.find(params[:id])
  end

  def update
    expense_content = ExpenseContent.find(params[:id])
    expense_content.update(expense_params)
    redirect_to root_path
  end

  def destroy
    expense_content = ExpenseContent.find(params[:id])
  end

  private
  def expense_params
    params.require(:expense_content).permit(:expense_category_id, :month_id, :content, :money).merge(user_id: current_user.id)
  end
end
