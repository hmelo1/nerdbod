class Workout < ApplicationRecord
  belongs_to :plan

  validates :name, :muscle_group, :equipment, :time_length, :reps, :sets, presence: true
  validates :time_length, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 600 }

  def full_name
    self.equipment + ' ' + self.muscle_group + ' ' + self.name
  end

  def rest_time
    self.time_length.to_s + ' ' + 'seconds'
  end
end
