class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
  # has_many :orders

  validates :name, presence: true, length: { minimum: 2, maximum: 35 }
  validates :description, presence: true, length: { minimum: 5, maximum: 255 }
  validates :address, presence: true, length: { minimum: 2, maximum: 150 }
  validates :phone, presence: true, numericality: true, length: { minumum: 10, maximum: 10 }
  validates :logo, presence: true

  has_one_attached :logo
end
