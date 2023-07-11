class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 35 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
  validates :address, presence: true, length: { minimum: 2, maximum: 150 }
  validates :phone_number, presence: true, numericality: true, length: { minumum: 10, maximum: 10 }
  validates :logo, presence: true

  has_one_attached :logo
end
