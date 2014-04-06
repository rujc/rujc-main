class EventsController < ApplicationController
  def index
    redirect_to Event.ordered.first
  end

  def show
    @event = Event.find(params[:id])
  end
end
