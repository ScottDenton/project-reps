class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all.where(user_id: current_user.id)
  end

  def show
    @workout = Workout.find_by(params[:id])
  end
end
