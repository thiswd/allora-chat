class PostsController < ApplicationController
  before_action :set_post
  def edit
    if params[:gif_search]
      @giphys = Giphy.search( params[:gif_search], {limit: 24})
      respond_to do |format|
        format.js
      end
    end
  end

  def update
    if @post.update(post_params)
      redirect_to edition_path(@post.edition)
    else
      render :edit
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:headline, :post_img, :post_img_cache,
      :option_more, :option_next, :edition_id, :_destroy,
      :balloons_attributes => [:id, :content, :balloon_img, :balloon_img_cache,
      :link, :_destroy, :weather])
  end

end
