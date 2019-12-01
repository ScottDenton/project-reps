class WorkoutComponent < ApplicationRecord
  has_many :strength_components
  has_many :cardio_components
  belongs_to :workout

  enum kind: [
    'strength',
    'cardio'
  ]
end
