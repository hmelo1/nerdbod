class RemoveGoalFromPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :goal, :string
  end
end
