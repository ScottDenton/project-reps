class StrengthComponent < ApplicationRecord
  has_many :strength_component_muscles
  has_many :muscle_groups, through: :strength_component_muscles
  belongs_to :user
  belongs_to :workout_component, optional: true
end
