class AddContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :days, :datetime
  end
end
