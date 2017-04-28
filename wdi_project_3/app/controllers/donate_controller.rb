class DonateController < ApplicationController

#def index
      #@state = params[:state]
    #@zipCode = params[:zipCode]
   #@response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
#end

def create
   @state = params[:state_name]
   @zipCode = params[:q]
   # @response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
   redirect_to '/donate/' + @state + '/' + @zipCode
end

def show
    @state = params[:state]
    @zipCode = params[:zipCode]
   @response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
end

def show2
  @name = params[:charityName]
  #@response = HTTParty.get("http://data.orghunter.com/v1/charitysearch?user_key=1a82108892d3c304b92805da415b93b6&state="+@state+"&zipCode="+@zipCode)
  #@response = JSON.parse(response)
end

end
