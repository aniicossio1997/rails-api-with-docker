class Store < ApplicationRecord
  has_many :employees
  has_one :owner
  validates :name, presence: true

end
