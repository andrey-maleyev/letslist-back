class Api::V1::ParticipantsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :create_participant_event_item, :delete_participant_event_item]
  before_action :set_user, only: [:index]
  before_action :set_participant, :set_events_item, only: [:create_participant_event_item, :delete_participant_event_item]

  def index
    @participants = Participant.where(user_id: @user)
  end

  def create
    @user = User.find(user_params[:user_id])
    @event = Event.find(event_params[:event_id])
    @participant = Participant.new
    @participant.user = @user
    @participant.event = @event
    @participant.is_creator = false
    @participant.save
  end

  def create_participant_event_item
    @participant.events_items << @events_item
    @events_item.is_taken = true
    @events_item.save
  end

  def delete_participant_event_item
    @participant.events_items.delete(@events_item)
    @events_item.is_taken = false
    @events_item.save
  end

  private

  def set_participant
   @participant = Participant.find(params[:participant_id])
  end

  def set_events_item
    @events_item = EventsItem.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def event_params
    params.require(:participant).permit(:event_id)
  end

  def user_params
    params.require(:participant).permit(:user_id)
  end
end