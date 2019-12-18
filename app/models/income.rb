class Income < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :income_category
  belongs_to :month
  belongs_to :user, foreign_key: :user_id
end
