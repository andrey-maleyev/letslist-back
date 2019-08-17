class Api::V1::ParticipantsController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token, only: [:update]
  before_action :set_user, only: [:index]
  
  def index
    @participants = Participant.where(user_id: @user)
  end
  
  private
  
  # def set_participant
  #  @participant = Participant.find(params[:id])
  # end

  def set_user
    @user = User.find(params[:user_id])
  end
end