class InvolvedController < ApplicationController
  before_filter :authenticate_user!

  def index
    @terms = HTTParty.get("https://www.dosomething.org/api/v1/terms")
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")
  end

  def create
    InvolvedFavorite.create(
      title: params[:title],
      url: params[:url],
      tagline: params[:tagline],
      user_id: params[:user_id]
      )
    redirect_to :back
  end

  def show
    @user = current_user
    if User.joins(:involved_favorites).where(:id => @user[:id])[0]
      @saved_favs = User.joins(:involved_favorites).where(:id => @user[:id])[0].involved_favorites
    end
    id = params[:id]
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")
  end

  def destroy
    InvolvedFavorite.destroy(params[:delete_id])
    redirect_to :back
  end


end


