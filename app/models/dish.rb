class Dish < ApplicationRecord
  validates :dish_group, presence: true, length: { minimum: 2, maximum: 25 }
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  validates :description, presence: true, length: { minimum: 5, maximum: 255 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  # validates :photo, presence: true
end
