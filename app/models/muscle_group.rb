class MuscleGroup < ApplicationRecord
  has_many :strength_component_muscles
  has_many :strength_components, through: :strength_component_muscles
end
