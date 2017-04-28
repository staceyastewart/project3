class DonateController < ApplicationController


def create
   @state = params[:state_name]
   @zipCode = params[:zip]
   redirect_to '/donate/' + @state + '/' + @zipCode
end

def show
    @state = params[:state]
    @zipCode = params[:zipCode]
   @response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
end

def show2
  @state = params[:state]
  @zipCode = params[:zipCode]
  puts "INFO BELOW"
  puts @state
  puts @zipCode
  response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
  @response = response["data"]

end

end
