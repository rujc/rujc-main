require 'spec_helper'

feature 'Event pages' do
  let(:place) { create(:place) }
  let(:performer) { create(:performer) }
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

  let!(:next_day_event) do
    create(:event,
      title: 'Master Class',
      place: place,
      performer: performer,
      starts_at: starts + 1.day,
      ends_at: starts + 1.day + 5.hours)
  end

  scenario 'First event page' do
    visit '/events'

    expect(page).to have_content 'Grand Opening'
    expect(page).to have_css('.event_date .event_date-time', text: first_event.starts_at.strftime('%-k:%M'))
    expect(page).to have_css('ul.event_day_schedule_events li', count: 1)
    expect(page).to have_css('ul.event_day_schedule_events li .event_day_schedule_event-title', text: 'Test event')
  end

  scenario 'Going to the next day' do
    visit '/events'

    page.find('a.event_next_link').click
    expect(page).to have_content 'Master Class'
  end

  context 'when there is no performer for the event' do
    scenario 'Event page sidebar' do
      visit '/events'

      expect(page).to_not have_css('.event_performer')
      expect(page).to have_css('.event_place-name', text: place.title)
    end
  end

  context 'when there is a performer for the event' do
    scenario 'Event page sidebar' do
      visit event_path(next_day_event)

      expect(page).to_not have_css('.event_place')
      expect(page).to have_css('.event_performer-name', text: performer.full_name)
      expect(page).to have_css('.event_performer-title', text: performer.title)

      href = page.find('a.event_performer-social_fb')[:href]
      expect(href).to eq performer.facebook_link
    end
  end
end
