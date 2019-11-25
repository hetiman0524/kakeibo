class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :content
      t.string :money
      t.integer :category_id
      t.integer :month_id
      t.timestamps
    end
  end
end
