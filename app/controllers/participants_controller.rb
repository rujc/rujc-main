class ParticipantsController < ApplicationController
  def create
    participant = Participant.new(participant_params)
    redirect_to :back if participant.save
  end

  private

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email)
  end
end
