class AddMainImagePlaceAndPerformer < ActiveRecord::Migration
  def change
    add_column :places, :main_image, :string
    add_column :performers, :main_image, :string
  end
end
