class Month < ApplicationRecord
  has_many :contents
  has_many :incomes
end
