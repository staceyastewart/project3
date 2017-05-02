class EventsController < ApplicationController

  def index
     @q = Event.ransack(params[:q])
     @results = @q.result(distinct: true)
     @event = Event.all
  end



  def create
   @event = Event.create(
    title: params[:title],
    date: params[:date],
    start_time: params[:start_time],
    end_time: params[:end_time],
    content: params[:content],
    topic: params[:topic],
    price: params[:price],
    type_of_event: params[:type_of_event],
    user_id: params[:user_id]
    )
    # @user = User.find_by(params[:id])
  redirect_to "/events/"
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
    start_time: params[:start_time],
    end_time: params[:end_time],
    content: params[:content],
    topic: params[:topic],
    price: params[:price],
    type_of_event: params[:type_of_event]
    )
  redirect_to event_path(@event)
 end

 def destroy
    Event.find(params[:id]).destroy
    redirect_to "/events"
 end

end


