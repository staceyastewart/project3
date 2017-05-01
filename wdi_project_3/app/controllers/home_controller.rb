class HomeController < ApplicationController
  def index
        @news = HTTParty.get("https://newsapi.org/v1/articles?source=associated-press&sortBy=top&apiKey=5045dff729e04b8f898503c8e2f22006")
    @rand_news= @news["articles"].sample
    @events = Event.all
    @calend = Calendar.all
    if current_user
      @favorites = InvolvedFavorite.where(:user_id => current_user.id)
    end

  end

  def show
      @calend = Calendar.where(:user_id => current_user.id)
      render :json => @calend

  end


  def update
    @calend = Calendar.find(params[:id])

    respond_to do |format|
      if @calend.update(event_params)
        format.json { render :show, status: :ok, location: @calend }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
end


