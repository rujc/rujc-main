unless Rails.env.production?
  AdminUser.create!(email: 'admin@rjc2014.com', password: '12345678')
end

event_start = 14.days.from_now
dummy_description = %Q{
Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type specimen book.
It has survived not only five centuries, but also the leap into electronic typesetting,
remaining essentially unchanged. It was popularised in the 1960s with the release of
Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing
software like Aldus PageMaker including versions of Lorem Ipsum.
}

Event.create!(
  title: 'Grand openning',
  description: dummy_description,
  starts_at: event_start,
  ends_at: event_start + 5.hours
)
Event.create!(
  title: 'Master class by YURI from Japan',
  description: dummy_description,
  starts_at: event_start + 5.hours,
  ends_at: event_start + 5.hours + 2.hours
)
Event.create!(
  title: 'Performance by guests',
  description: dummy_description,
  starts_at: event_start + 1.day,
  ends_at: event_start + 1.day + 3.hours
)
Event.create!(
  title: 'Free time',
  description: dummy_description,
  starts_at: event_start + 1.day + 5.hours,
  ends_at: event_start + 1.day + 7.hours
)
Event.create!(
  title: 'Afterparty',
  description: dummy_description,
  starts_at: event_start + 2.days,
  ends_at: event_start + 2.days + 2.hours
)
