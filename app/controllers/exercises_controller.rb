class ExercisesController < ApplicationController

  def index
    @exercise = Exercise.new
    @exercise_muscle = ExerciseMuscle.new
    @exercises = Exercise.all
  end

  def create
    @exercise = Exercise.create(name: exercise_params[:name])
    exercise_params[:exercise_muscle][:id].each do |muscle_id|
     ExerciseMuscle.create(
      muscle_group_id: muscle_id.to_i,
      exercise_id: @exercise.id
    )
    end
    redirect_to exercises_path
  end

  def show
    @exercise = Exercise.find(params[:id])
  end


  private

  def exercise_params
    params.require(:exercise).permit(
      :name,
      {:exercise_muscle =>[
        :id => []
        ]
      })
  end


end
