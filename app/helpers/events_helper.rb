module EventsHelper
  def event_next_in_schedule(event)
    if next_event = event.next_day_in_schedule
      render 'events/next_event', event: next_event
    end
  end
end
