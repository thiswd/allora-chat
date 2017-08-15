class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def new
  end

  def edit
  end

  def show
  end
end
