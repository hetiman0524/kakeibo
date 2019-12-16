class Income < ApplicationRecord
  belongs_to :month
  belongs_to :category
  belongs_to :user, foreign_key: :user_id
end
