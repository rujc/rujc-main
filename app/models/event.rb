class Event < ActiveRecord::Base
  belongs_to :place

  scope :ordered, -> { order('events.starts_at asc') }
  scope :since, ->(date) { ordered.where('events.starts_at > ?', date) }
  scope :until, ->(date) { ordered.where('events.starts_at < ?', date) }

  def next_day_in_schedule
    self.class.since(starts_at.end_of_day).first
  end

  def the_same_day_in_schedule
    events = self.class.since(starts_at.beginning_of_day).until(starts_at.end_of_day)

    events - [self]
  end
end
