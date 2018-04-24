class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :muscle_group
      t.string :equipment
      t.integer :time_length
      t.date :date
      t.integer :reps
      t.integer :sets

      t.timestamps
    end
  end
end
