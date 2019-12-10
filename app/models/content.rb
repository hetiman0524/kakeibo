class Content < ApplicationRecord
  belongs_to :month
  belongs_to :category
  belongs_to :user, foreign_key: :User_id
end
