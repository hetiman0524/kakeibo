class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :content
      t.string :money
      t.integer :category_id
      t.integer :month_id
      t.integer :user_id
      t.timestamps
    end
  end
end
