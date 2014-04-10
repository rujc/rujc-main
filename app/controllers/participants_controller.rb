class ParticipantsController < ApplicationController
  def create
    participant = Participant.new(participant_params)
    if participant.save
      redirect_to :back, notice: 'Регистрация прошла успешно, на ваш e-mail было выслано письмо с дальнейшими инструкциями.'
    else
      redirect_to :back, error: 'При регистрации произошла ошибка, пожалуйста, повторите попытку.'
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email)
  end
end
