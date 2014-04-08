class Participant < ActiveRecord::Base
  validates :first_name, :last_name, :city, :phone_number,
    :email, :master_class, :will_perform, :visit_special_guests,
    :payment_method, presence: true
end
