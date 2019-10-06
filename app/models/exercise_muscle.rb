class ExerciseMuscle < ApplicationRecord
  belongs_to :muscle_group
  belongs_to :exercise

end
