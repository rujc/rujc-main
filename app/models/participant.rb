class Participant < ActiveRecord::Base
  validates :first_name, :last_name, :phone_number, :email, presence: true

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :email, uniqueness: true
end
