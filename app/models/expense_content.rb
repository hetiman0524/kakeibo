class ExpenseContent < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :expense_category
  belongs_to_active_hash :month
  belongs_to :user
end
