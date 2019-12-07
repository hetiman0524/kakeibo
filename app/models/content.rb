class Content < ApplicationRecord
  belongs_to :month
  belongs_to :category
  belongs_to :user
end
