class StrengthComponentsController < ApplicationController
  def index
    @strength_component = StrengthComponent.new
    @strength_component_muscle = StrengthComponentMuscle.new
    @strength_components = StrengthComponent.where(user_id: current_user.id)
  end

  def create
    @strength_component = StrengthComponent.create(strength_component_params)
    raw_strength_component_params[:strength_component_muscle][:id].each do |muscle_id|
     StrengthComponentMuscle.create(
      muscle_group_id: muscle_id.to_i,
      strength_component_id: @strength_component.id
    )
    end
    redirect_to strength_components_path
  end

  def show
    @strength_component = StrengthComponent.find(params[:id])
  end


  private

  def raw_strength_component_params
    params.require(:strength_component).permit(
      :name,
      :user_id,
      {:strength_component_muscle =>[
        :id => []
        ]
      })
  end

  def strength_component_params
    {name: raw_strength_component_params[:name], user_id: raw_strength_component_params[:user_id]}
  end


end
