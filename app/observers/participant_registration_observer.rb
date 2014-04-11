class ParticipantRegistrationObserver < ActiveRecord::Observer
  observe :participant

  def after_create(participant)
    ParticipantRegistrationMailer
      .next_steps(participant.first_name, participant.email)
      .deliver
  end
end
