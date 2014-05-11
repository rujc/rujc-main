class EventsController < ApplicationController
  def index
    redirect_to Event.ordered.first
  end

  def show
    @event = Event.find(params[:id])
    @performer = @event.performer
    @place = @event.place
  end

  def participants
    @event = Event.find(params[:id])

    impressionist @event, '', :unique => [:impressionable_type, :impressionable_id, :session_hash]

    head :ok
  end
end
