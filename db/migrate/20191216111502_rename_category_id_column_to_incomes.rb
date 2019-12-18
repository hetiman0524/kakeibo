class RenameCategoryIdColumnToIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :incomes, :category_id, :income_category_id
  end
end
