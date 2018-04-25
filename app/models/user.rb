class User < ApplicationRecord
  has_many :plans
  has_many :workouts, through: :plans
end
