class RenameIncomesToIncomeContents < ActiveRecord::Migration[5.2]
  def change
    rename_table :incomes, :income_contents
  end
end
