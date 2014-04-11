class Performer < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
