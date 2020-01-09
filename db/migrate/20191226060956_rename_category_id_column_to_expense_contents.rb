class RenameCategoryIdColumnToExpenseContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :expense_contents, :category_id, :expense_category_id
  end
end
