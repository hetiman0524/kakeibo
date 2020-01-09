class RenameContentsToExpenseContents < ActiveRecord::Migration[5.2]
  def change
    rename_table :contents, :expense_contents
  end
end
