class EditionsController < ApplicationController
  def new
    @edition = Edition.new

    if params[:gif_search]
      @giphys = Giphy.search( params[:gif_search], {limit: 24})
      respond_to do |format|
        format.js
      end
    end
  end

  def create
    @user = current_user
    @edition = Edition.new(edition_params)
    @edition.user = current_user
    if @edition.save
      redirect_to new_edition_post_path(@edition)
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
    params.require(:edition).permit(:date, :greeting, :greeting_img, :greeting_img_cache, :farewell, :farewell_img, :farewell_img_cache, :user_id)
  end

end
