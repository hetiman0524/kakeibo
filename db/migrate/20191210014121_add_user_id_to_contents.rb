class AddUserIdToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :User_id, :integer
  end
end
