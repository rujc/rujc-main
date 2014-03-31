class Event < ActiveRecord::Base
  scope :ordered, -> { order('events.starts_at asc') }
  scope :since, ->(date) { ordered.where('events.starts_at > ?', date) }

  def next_day_in_schedule
    self.class.since(starts_at.end_of_day).first
  end
end
