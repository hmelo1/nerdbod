class Plan < ApplicationRecord
  has_many :workouts
  has_many :users, through: :comments
  has_many :comments
  validates :name, :equipment_needed, :time_per_workout, presence: true
  scope :dumbbells, -> {where(equipment_needed: 'Dumbbells')}

  def days_of_week
     ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
   end


#scope :red, -> { where(color: 'red') }

end
