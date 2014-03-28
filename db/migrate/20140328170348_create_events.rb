class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false, default: ''
      t.text :description, null: false, default: ''
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
