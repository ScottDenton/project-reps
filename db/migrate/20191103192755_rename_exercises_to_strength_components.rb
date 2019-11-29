class RenameExercisesToStrengthComponents < ActiveRecord::Migration[5.2]
  def change
    rename_table :exercises, :strength_components
    rename_table :exercise_muscles, :strength_component_muscles
    rename_column :strength_component_muscles, :exercise_id, :strength_component_id
  end
end
