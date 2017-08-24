class EditionsController < ApplicationController
  before_action :set_user, only: [:show, :create]
  before_action :set_edition, only: [:show, :edit, :update, :destroy]

  def show

    @balloons = []
    @edition.posts.each do |post|
      post.balloons.each do |balloon|
        @balloons << balloon
      end
    end


    @hash = Gmaps4rails.build_markers(@balloons) do |meeting, marker|
      marker.lat meeting.latitude
      marker.lng meeting.longitude
    end
  end

  def new
    @edition = Edition.new
    authorize @edition

    if params[:gif_search]
      @giphys = Giphy.search( params[:gif_search], {limit: 32})
      respond_to do |format|
        format.js
      end
    end
  end

  def create
    @edition = Edition.new(edition_params)
    @edition.user = current_user
    authorize @edition

    if @edition.save
      redirect_to edition_path(@edition)
    else
      render :new
    end
  end

  def edit
    if params[:gif_search]
      @giphys = Giphy.search( params[:gif_search], {limit: 24})
      respond_to do |format|
        format.js
      end
    end
  end

  def update
    if @edition.update(edition_params)
      redirect_to edition_path(@edition)
    else
      render :edit
    end
  end

  def destroy
    @edition.destroy
  end

  def weather
    options = { units: "metric", APPID: "f2aa967fb9c24b70e9ce5e29b55f7fb6" }
    weather = OpenWeather::Current.city(params[:weather], options)
    respond_to do |format|
      format.html
      format.json {
        render json: weather
        # render text: "Weather Conditions: Min. Temp.: #{weather["main"]["temp"]}"
      }
    end
  end

  private

  def edition_params
    params.require(:edition).permit(:date, :greeting, :greeting_img,
                                    :greeting_img_cache, :farewell,
                                    :farewell_img, :farewell_img_cache, :greeting_gif, :farewell_gif,
                                    :posts_attributes => [:id, :headline, :post_img, :post_img_cache,
                                    :option_more, :option_next, :edition_id, :post_gif, :_destroy,
                                    :balloons_attributes => [:id, :content, :balloon_img, :balloon_img_cache, :link, :balloon_gif, :_destroy, :weather, :youtube]])

  end

  def set_user
    @user = current_user
  end

  def set_edition
    @edition = Edition.find(params[:id])
    authorize @edition
  end

end
