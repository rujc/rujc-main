module EventsHelper
  def event_nice_date(event)
    render 'events/event_date', date: event.starts_at
  end

  def event_next_in_schedule(event)
    if next_event = event.next_in_schedule
      render 'events/next_event', event: event
    end
  end
end
