class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :time_per_workout
      t.string :equipment_needed
      t.string :goal

      t.timestamps
    end
  end
end
