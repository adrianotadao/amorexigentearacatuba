class EventsController < ApplicationController
  def index
    @events = Event.actives.all
    @partners = Partner.actives.random.all
  end
  
  def show
    @event = Event.find params[:id]
  end
end
