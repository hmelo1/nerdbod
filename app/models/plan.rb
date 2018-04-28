class Plan < ApplicationRecord
  has_many :workouts
  #belongs_to :user

  def days_of_week
     ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
   end
end
