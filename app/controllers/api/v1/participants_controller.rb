class Api::V1::ParticipantsController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token, only: [:update]
  # before_action :find_participant, only: [:update]
  
  def index
    @participants = Participant.all
  end
  
  private
  
  # def find_participant
  #  @participant = Participant.find(params[:id])
  # end
end