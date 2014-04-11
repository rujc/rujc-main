class Place < ActiveRecord::Base
  has_many :events

  mount_uploader :main_image, MainImageUploader
end
