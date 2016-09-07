class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all.order("created_at DESC")
  end

  def create
  current_company.users.create user_params
    redirect_to "/dashboard"
  end

  def new
    @user = User.new
    render 'users/new'
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to dashboard_path
    else
      redirect_to :back, alert: @user.errors
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to dashboard_path
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :avatar,
      :avatar_cache,
      :firstname,
      :lastname,
      :password,
      :password_confirmation
    )
  end
end
