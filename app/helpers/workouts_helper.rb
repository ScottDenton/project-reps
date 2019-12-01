module WorkoutsHelper
  def component_kind_path(component)
  "#{component.kind}_component"
  end

  def component_by_kind(component)
    case(component.kind)
    when 'strength'
      component.strength_components
    when 'cardio'
      component.cardio_components
    end
  end

  def component_names(workout)
    workout.workout_components.map do |component|
      component_by_kind(component).pluck(:name)
    end.flatten
  end
end
