class AddMainMuscleGroups < ActiveRecord::Migration[5.2]
  def change
    muscles =  %w(Quadriceps Hamstrings Calves Chest Back Shoulders Triceps Biceps Forearms Trapezius Abs)

    # muscles.each{ |muscle| MuscleGroup.create(name: muscle) }

  end
end
