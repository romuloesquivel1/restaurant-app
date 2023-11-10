class Dish < ApplicationRecord
  belongs_to :restaurant

  has_one_attached :photo

  validates :dish_group, presence: true, length: { minimum: 2, maximum: 100 }
  validates :name, presence: true, length: { minimum: 2, maximum: 255 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :photo, presence: true

  # just for log
  after_create_commit do
    if photo.attached? && photo.created_at.present?
      puts "Photo: #{photo.filename} created at #{photo.created_at}"
    end
  end
end
