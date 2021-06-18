class Product < ApplicationRecord
  belongs_to :store
  acts_as_paranoid
  validates :name, :description, :price, :store_id, presence: true
  
end
