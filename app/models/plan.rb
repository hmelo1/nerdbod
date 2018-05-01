class Plan < ApplicationRecord
  has_many :workouts
  has_many :users, through: :comments
  has_many :comments
  validates :name, :equipment_needed, :time_per_workout, presence: true

  def days_of_week
     ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
   end
end
