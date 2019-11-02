class Exercise < ApplicationRecord
  has_many :exercise_muscles
  has_many :muscle_groups, through: :exercise_muscles
  belongs_to :user

end
