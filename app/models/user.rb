class User < ApplicationRecord
  has_many :characters
  has_many :class_users
  has_many :class_types, through: :class_users

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
