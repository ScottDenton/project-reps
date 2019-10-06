class CreateExerciseMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_muscles do |t|
      t.integer :muscle_group_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
