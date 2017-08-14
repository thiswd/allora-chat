class EditionsController < ApplicationController
  def new
    @edition = Edition.new
  end

  def create
    @edition = Edition.save(edition_params)
    @edition.user = current_user
    @edition.save

  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def edition_params
    params.require(:edition).permit(:date, :greeting, :greeting_img, :farewell, :farewell_img, :user_id, posts_attributes: [:id, :headline, :option_more, :option_next, :post_img, :edition_id, :_destroy])
  end
end
