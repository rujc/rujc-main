class Performer < ActiveRecord::Base
  mount_uploader :main_image, MainImageUploader

  validates :first_name, :last_name, presence: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
