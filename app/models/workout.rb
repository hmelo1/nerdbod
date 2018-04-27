class Workout < ApplicationRecord
  #belongs_to :plan
  #has_many :users, through: :plans

  validates :name, presence: true
  validates :muscle_group, presence: true
  validates :equipment, presence: true
  validates :time_length, presence: true
  validates :reps, presence: true
  validates :sets, presence: true

end
