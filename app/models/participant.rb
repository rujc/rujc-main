class Participant < ActiveRecord::Base
  validates :first_name, :last_name, :email
end
