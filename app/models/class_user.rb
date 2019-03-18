class ClassUser < ApplicationRecord
  belongs_to :class_type
  belongs_to :user
end
