class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])

  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :category, :user_photo, :influencer, :email)
  end

end
