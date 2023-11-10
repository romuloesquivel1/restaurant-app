class Item < ApplicationRecord
  belongs_to :dish
  belongs_to :order

  validates :price, presence: true
end
