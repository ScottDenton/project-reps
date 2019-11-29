class CardioComponentsController < ApplicationController
  def index
    @cardio_components = CardioComponent.all.where(user_id: current_user.id)
    @cardio_component = CardioComponent.new
  end

  def create
    @cardio_component = CardioComponent.create(cardio_params)
    if @cardio_component.valid?
      flash.clear
      redirect_to cardio_components_path
    else
      @cardio_component.errors.each do |attr, message|
        flash[:error] = "#{attr.capitalize} #{message}!"
      end
      render :index
    end
  end

  def show
    @cardio_component = CardioComponent.find_by(id: params[:id])
  end


  private

  def cardio_params
    params.require(:cardio_component).permit(:name, :distance, :hours, :minutes, :seconds, :calories, :user_id)
  end
end
