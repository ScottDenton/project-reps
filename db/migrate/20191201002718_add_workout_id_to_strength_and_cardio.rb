class AddWorkoutIdToStrengthAndCardio < ActiveRecord::Migration[5.2]
  def change
    add_column :strength_components, :workout_component_id, :integer
    add_column :cardio_components, :workout_component_id, :integer
  end
end
