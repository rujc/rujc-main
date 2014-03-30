module EventsHelper
  def event_nice_date(event)
    render 'events/event_date', date: event.starts_at
  end
end
