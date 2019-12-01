class CardioComponent < ApplicationRecord
  validates :name, presence: true
  belongs_to :workout_component, optional: true
  belongs_to :user
end
