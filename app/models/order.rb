class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :items

  accepts_nested_attributes_for :items
end
