class Api::V1::ParticipantsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :set_user, only: [:index]
  
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
  
  private
  
  # def set_participant
  #  @participant = Participant.find(params[:id])
  # end

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