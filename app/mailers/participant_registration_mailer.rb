class ParticipantRegistrationMailer < ActionMailer::Base
  default from: "org@rjc2014.ru"

  def next_steps(first_name, email)
    @first_name = first_name
    mail to: email, subject: 'Информация о регистрации на RJC 2014'
  end
end
