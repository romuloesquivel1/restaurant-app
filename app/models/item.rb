class Item < ApplicationRecord
  has_one :dish
  belongs_to :order

  validates :price, presence: true
end
