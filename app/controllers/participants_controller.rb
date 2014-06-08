class ParticipantsController < ApplicationController
  def create
    participant = Participant.new(participant_params)
    if participant.save
      redirect_to :back, notice: I18n.t('app.signup.success')
    else
      first_error = participant.errors.first.last
      redirect_to :back, alert: I18n.t('app.signup.failure', error: first_error)
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :phone_number, :email)
  end
end
