class PostsController < ApplicationController
  before_action :set_edition, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.edition = @edition

    if @post.save
      redirect_to new_edition_post_balloon_path(@edition, @post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:headline, :option_more, :option_next, :post_img, :post_img_cache, :edition_id)
  end

  def set_edition
    @edition = Edition.find(params[:edition_id])
  end
end
