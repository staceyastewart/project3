class FavoritecharitiesController < ApplicationController
  before_filter :authenticate_user!

  def create
    FavoriteCharity.create(
      name: params[:name],
      city: params[:city],
      url: params[:url],
      user_id: params[:user_id]
      )
    redirect_to :back
  end

   def destroy
    FavoriteCharity.destroy(params[:delete_id])
    redirect_to :back
  end

end
