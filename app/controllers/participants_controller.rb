class ParticipantsController < ApplicationController
  def create
    participant = Participant.new(participant_params)
    if participant.save
      redirect_to :back, notice: 'Регистрация прошла успешно, на ваш e-mail было выслано письмо с дальнейшими инструкциями.'
    else
      first_error = participant.errors.first.last
      redirect_to :back, alert: "При регистрации произошла ошибка — #{first_error}, пожалуйста, повторите попытку."
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email)
  end
end
