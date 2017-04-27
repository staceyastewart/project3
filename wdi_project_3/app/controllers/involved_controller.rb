class InvolvedController < ApplicationController
  def index
    puts "INFO BELOW"
    puts current_user[:id]
    @terms = HTTParty.get("https://www.dosomething.org/api/v1/terms")
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")
  end

  def show
    id = params[:id]
    @campaigns = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")

  end
end


