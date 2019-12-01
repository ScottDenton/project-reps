class Workout < ApplicationRecord
  has_many :workout_components
  has_many :cardio_components, through: :workout_components
  has_many :strength_components, through: :workout_components
  belongs_to :user
end
