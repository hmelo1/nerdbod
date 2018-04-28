class AddDayToPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :day, :string
  end
end
