class RenameDaysColumnToIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :incomes, :days, :day
  end
end
