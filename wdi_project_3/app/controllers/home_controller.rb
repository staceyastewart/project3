class HomeController < ApplicationController
  def index
        @news = HTTParty.get("https://newsapi.org/v1/articles?source=associated-press&sortBy=top&apiKey=5045dff729e04b8f898503c8e2f22006")
    @rand_news= @news["articles"].sample

  end

    def show
    @news = HTTParty.get("https://newsapi.org/v1/articles?source=associated-press&sortBy=top&apiKey=5045dff729e04b8f898503c8e2f22006")
    @rand_news= @news["articles"].sample
  end
end
