class CreateCardioComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :cardio_components do |t|
      t.string :name
      t.integer :distance
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.integer :calories
      t.integer :user_id
      t.timestamps
    end
  end
end
