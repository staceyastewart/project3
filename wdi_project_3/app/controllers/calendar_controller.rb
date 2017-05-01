class CalendarController < ApplicationController
    def index
      @calend = Calendar.all
      # render :json => @calend
  end

    def show
      @calend = Calendar.all
      render :json => @calend
  end
end
