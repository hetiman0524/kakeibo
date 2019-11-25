class Month < ApplicationRecord
  has_many :category_months
  has_many :categorys, through: :category_months
  has_many :contents
end