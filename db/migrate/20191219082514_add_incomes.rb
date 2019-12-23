class AddIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :days, :datetime
  end
end
