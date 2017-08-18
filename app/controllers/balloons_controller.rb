class BalloonsController < ApplicationController
  before_action :set_post, only: [:new, :create]
  before_action :set_edition, only: [:new, :create]

  def new
    @balloon = Balloon.new
  end

  def create
    @balloon = Balloon.new(balloon_params)
    @balloon.post = @post

    if @balloon.save
      redirect_to new_edition_post_balloon_path(@edition, @post)
    else
      render :new
    end
  end

  private

  def balloon_params
    params.require(:balloon).permit(:content, :link, :option_next, :balloon_img, :balloon_img_cache, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_edition
    @edition = Edition.find(params[:edition_id])
  end
end
