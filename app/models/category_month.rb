class CategoryMonth < ApplicationRecord
  has_many :contents
  belongs_to :category
  belongs_to :month
end
