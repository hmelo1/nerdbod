class Workout < ApplicationRecord
  belongs_to :plan
  has_many :users, through: :plans
end
