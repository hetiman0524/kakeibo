class CreateCategoryMonths < ActiveRecord::Migration[5.2]

  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.timestamps
    end
 
    create_table :months do |t|
      t.string :month, null: false
      t.timestamps
    end
 
    create_table :category_months do |t|
      t.references :category, foreign_key: true
      t.references :month, foreign_key: true
      t.timestamps
    end
  end
end
