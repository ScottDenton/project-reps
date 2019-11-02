class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Please check your details "
      render 'new'
    end

  end

  def login

  end

  def show
    @user = User.find(params[:id])
  end


private

  def user_params
    params.require(:user).permit([:name, :height, :weight,:email, :password, :password_confirmation])
  end

end
