require 'spec_helper'

feature 'Event pages' do
  let(:place) { create(:place) }
  let(:starts) { 2.days.from_now }

  let!(:first_event) do
    create(:event,
      title: 'Grand Opening',
      place: place,
      starts_at: starts,
      ends_at: starts + 5.hours)
  end

  let!(:second_event) do
    create(:event,
      place: place,
      starts_at: starts + 7.hours,
      ends_at: starts + 10.hours)
  end

  scenario 'First event page' do
    visit '/events'

    expect(page).to have_content 'Grand Opening'
    expect(page).to have_css('.event_date .event_date-time', text: first_event.starts_at.strftime('%-k:%M'))
    expect(page).to have_css('ul.event_day_schedule_events li', count: 1)
    expect(page).to have_css('ul.event_day_schedule_events li .event_day_schedule_event-title', text: 'Test event')
  end
end
