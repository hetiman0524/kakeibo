class CashFlowsController < ApplicationController
  def index
    @months = Month.all
    @month = Month.find_by(params[:id])
    @expense_events = Content.all
    @income_events = Income.all
  end
end
