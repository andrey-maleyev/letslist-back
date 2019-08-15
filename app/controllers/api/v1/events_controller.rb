class Api::V1::EventsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create]
  # before_action :find_event, only: [:update]
  
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end
  
  private
  
  # def find_event
  #  @event = Event.find(params[:id])
  # end

  def event_params
    params.require(:event).permit(:name, :date)
  end
end