class ExercisesController < ApplicationController
  def index
    @exercise = Exercise.new
    @exercise_muscle = ExerciseMuscle.new
    @exercises = Exercise.where(user_id: current_user.id)
  end

  def create
    @exercise = Exercise.create(exercise_params)
    raw_exercise_params[:exercise_muscle][:id].each do |muscle_id|
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

  def raw_exercise_params
    params.require(:exercise).permit(
      :name,
      :user_id,
      {:exercise_muscle =>[
        :id => []
        ]
      })
  end

  def exercise_params
    {name: raw_exercise_params[:name], user_id: raw_exercise_params[:user_id]}
  end


end
