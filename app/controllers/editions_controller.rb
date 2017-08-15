class EditionsController < ApplicationController
  def new
    @edition = Edition.new
  end

  def create
    @edition = Edition.new(edition_params)
    @edition.user = current_user
    if @edition.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def edition_params
    params.require(:edition).permit(:date, :greeting, :greeting_img, :remote_greeting_img_url, :greeting_img_cache, :farewell, :farewell_img, :user_id)
  end

end
