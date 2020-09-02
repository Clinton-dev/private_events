class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  
  def create
    @event = current_user.created_events.build(events_params)
    if @event.save
     flash[:notice] = "event created!!"
     redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def events_params
   params.require(:event).permit(:description, :date)
  end
end
