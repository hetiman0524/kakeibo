class RenameIncomesToIncomeContents < ActiveRecord::Migration[5.2]
  def change
    rename_table :incomes, :Income_contents
  end
end
