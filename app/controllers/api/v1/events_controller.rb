class Api::V1::EventsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :create_event_item]
  before_action :set_event, only:[:show]
  
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.save
    @user = User.find(user_params[:userId])
    @participant = Participant.new
    @participant.user = @user
    @participant.event = @event
    @participant.is_creator = true
    @participant.save
  end

  def show

  end
  
  def create_event_item
    @event = Event.find(params[:event_id])
    @item = Item.find(params[:id])
    @event.items << @item
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :date)
  end

  def user_params
    params.require(:event).permit(:userId)
  end
end