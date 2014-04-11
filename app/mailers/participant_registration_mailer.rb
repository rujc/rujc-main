class ParticipantRegistrationMailer < ActionMailer::Base
  default from: 'org@rjc2014.ru'

  def next_steps(first_name, email)
    @first_name = first_name
    @link_to_form = 'https://docs.google.com/forms/d/1YVmwB-bDUAZOJHgvdq4kpzZSt6yxG_OgXdWJ_ROYWCs/viewform'

    mail to: email, subject: 'Информация о регистрации на RJC 2014'
  end
end
