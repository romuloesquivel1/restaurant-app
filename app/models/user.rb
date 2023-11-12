class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :full_name, presence: true
  has_many :orders, dependent: :destroy
  has_many :items, through: :orders
  has_many :restaurants, through: :orders
  validates :role, presence: true
  validates :role, inclusion: { in: %w(admin officer customer) }

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:email)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { value: login.strip.downcase }]).first
  end

  def is_admin?
    self.role == 'admin'
  end

end
