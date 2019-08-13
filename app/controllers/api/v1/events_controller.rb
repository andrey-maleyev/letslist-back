class Api::V1::EventsController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token, only: [:update]
  # before_action :find_event, only: [:update]
  
  def index
    @events = Event.all
  end
  
  private
  
  # def find_event
  #  @event = Event.find(params[:id])
  # end
end