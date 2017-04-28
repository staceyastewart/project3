class EventsController < ApplicationController
  def index
    # response = HTTParty.get('http://api.eventful.com/json/events/search?location=Gainesville,fl&app_key=qvgN8xWBkP7t7GJt')
    # @response = JSON.parse(response)["events"]["event"]
    #parse the events to access the event inside of the api call.
    @response = []
  end

 def show
    @request = HTTParty.get(make_url)
   @response = JSON.parse(@request)["events"]["event"]
    render "events#show"
    @response = []
 end

  def search
    @request = HTTParty.get(make_url)
    @response = JSON.parse(@request)["events"]["event"]
    render "events#index"
  end

  private
  def make_url
    base = "http://api.eventful.com/json/events/search?"
    url_params = []
    if params[:keyword]
      #if this exist
      url_params.push({keyword: "keyword", value: params[:keyword]})
      #then generate an object for it and push it into an array
    end
    if params[:location]
      #if this exists
      url_params.push({keyword: "location", value: params[:location]})
      #then genreate an object for it and push it into an array
    end

    url_string = url_params.reduce do |building, params|
      # going thorugh array and reducing it down to string of parameters that we need to send reduce feeds into each of the objects...
      unless building
        building = "#{param.keyword}=#{param.value}"
        #if there is no building then its the first of the parameteres, which means you'll have the keyword to the value
      else
        building = "&#{param.keyword}=#{param.value}"
        #if there are params there then you need the & sign plus key:value
      end
      building
    end

    full_url = "#{base}#{url_string}&app_key=qvgN8xWBkP7t7GJt"
    full_url

  end

end
