class RenameIncomesToIncomeContents < ActiveRecord::Migration[5.2]
  def change
    rename_table :Incomes, :Income_contents
  end
end
