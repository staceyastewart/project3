class EventsController < ApplicationController
  def index
    @event = Event.all
  end

 def show
  @event = Event.find_by(id: params[:id])
 end

 def edit
  @event = Event.find(params[:id])
end

def update
  @event = Event.find(params[:id])
  @event.update(
    title: params[:title],
    date: params[:date],
    start_time: params[:date],
    end_time: params[:date],
    content: params[:date],
    topic: params[:topic],
    price: params[:price],
    type_of_event: params[:type_of_event]
    )
end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to "/events"
  end

end


