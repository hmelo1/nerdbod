class Plan < ApplicationRecord
  has_many :workouts
  belongs_to :users
end
