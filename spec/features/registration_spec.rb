require 'spec_helper'

feature 'Registration page' do
  scenario 'Visiting registration page' do
    visit '/about'

    click_on 'Регистрация'

    page.should have_css('form#main_signup_form')
  end

  scenario 'Registration of the participant' do
    Participant.count.should eq 0

    visit '/registrations/new'

    fill_in 'participant[first_name]', with: 'Antony'
    fill_in 'participant[last_name]', with: 'Gatto'
    fill_in 'participant[email]', with: 'antony-awesome@example.com'

    expect {
      click_on 'Я иду!'
    }.to change { Participant.count }.from(0).to(1)

    page.should have_content 'Регистрация прошла успешно, на ваш e-mail было выслано письмо с дальнейшими инструкциями.'

    participant = Participant.first
    participant.first_name.should eq 'Antony'
    participant.last_name.should eq 'Gatto'
    participant.email.should eq 'antony-awesome@example.com'
  end
end
