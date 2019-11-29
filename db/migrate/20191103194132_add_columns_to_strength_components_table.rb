class AddColumnsToStrengthComponentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :strength_components, :weight, :integer, scale: 2
    add_column :strength_components, :reps, :integer, scale: 2
    add_column :strength_components, :sets, :integer, scale: 2
  end
end
