class RenameDaysColumnToContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :days, :day
  end
end
