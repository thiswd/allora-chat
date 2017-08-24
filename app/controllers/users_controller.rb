class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  def show
    @user = User.friendly.find(params[:id])
    authorize @user

    editions = @user.editions.where('date::date = ?', Date.today).order(date: :desc)
    if editions.count > 0
      @edition = editions.first
    else
      @edition = @user.editions.where('date::date < ?', Date.today).order(date: :desc).first
    end
  end

  def index
    @users = policy_scope(User)
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :category, :user_photo,
    :user_photo_cache, :influencer, :email, :banner, :banner_cache, :position, :description)
  end

  def banner_params
    params.require(:user).permit(:banner)
  end
end
