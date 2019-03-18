class ClassType < ApplicationRecord
  has_many :class_users
  has_many :class_types, through: :class_users
end
