class AmrapsController < ApplicationController

  def index
    @amrap = Amrap.new
    @amraps = Amrap.where(user_id: current_user.id)
    @amrap_work = AmrapWork.new
  end

  def show
    @amrap = Amrap.find_by(id: params[:id])
  end
end
