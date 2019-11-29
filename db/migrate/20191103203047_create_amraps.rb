class CreateAmraps < ActiveRecord::Migration[5.2]
  def change
    create_table :amraps do |t|
      t.string :name
      t.integer :rounds
      t.integer :reps
      t.integer :user_id
      t.text :work

      t.timestamps
    end
  end
end
