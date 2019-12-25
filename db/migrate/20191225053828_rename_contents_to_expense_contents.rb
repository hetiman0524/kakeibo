class RenameContentsToExpenseContents < ActiveRecord::Migration[5.2]
  def change
    rename_table :Contents, :Expense_contents
  end
end
