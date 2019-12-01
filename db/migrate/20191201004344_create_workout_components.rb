class CreateWorkoutComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_components do |t|
      t.integer :kind
      t.integer :workout_id
      t.timestamps
    end
  end
end
