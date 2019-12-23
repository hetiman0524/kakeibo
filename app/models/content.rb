class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :category
  belongs_to :month
  belongs_to :user, foreign_key: :user_id

end

