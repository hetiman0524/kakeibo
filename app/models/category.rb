class Category < ApplicationRecord
  has_many :months, through: :category_months
  has_many :category_months
  has_many :contents
  accepts_nested_attributes_for :contents
  accepts_nested_attributes_for :contents
end
