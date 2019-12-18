class CashFlowsController < ApplicationController
  def index
    @months = Month.all
    @month = Month.find_by(params[:id])
  end
end
