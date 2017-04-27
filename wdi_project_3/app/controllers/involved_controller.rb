class InvolvedController < ApplicationController
  def index
    @terms = HTTParty.get("https://www.dosomething.org/api/v1/terms")
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")
  end

  def show
    id = params[:id]
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")
  end
end


