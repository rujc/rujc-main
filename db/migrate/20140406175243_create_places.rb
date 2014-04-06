class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title, null: false, default: ''
      t.string :google_maps_link, null: false, default: ''

      t.timestamps
    end
  end
end
