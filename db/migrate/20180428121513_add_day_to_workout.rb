class AddDayToWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :day, :string
  end
end
