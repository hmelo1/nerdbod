class AddPlanIdToWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :plan_id, :integer
  end
end
