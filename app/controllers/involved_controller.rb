class InvolvedController < ApplicationController
  before_filter :authenticate_user!

  def index
    @terms = Cause.all_terms
    @causes = Cause.all
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
    @cause_term = params[:id]
    @causes = Cause.where(term: @cause_term)
  end

  def destroy
    involved_favorite = InvolvedFavorite.find(params[:delete_id])
    return unless involved_favorite.user.id === current_user.id

    involved_favorite.destroy
    redirect_to :back
  end


end


