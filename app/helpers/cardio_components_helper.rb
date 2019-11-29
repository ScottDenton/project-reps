module CardioComponentsHelper
  def cardio_time_helper(cardio_component)\
    hours = cardio_component.hours ? cardio_component.hours: '00'
    minutes = cardio_component.minutes ? cardio_component.minutes: '00'
    seconds = cardio_component.seconds ? cardio_component.seconds: '00'
    "#{hours}:#{minutes}:#{seconds}"
  end
end
