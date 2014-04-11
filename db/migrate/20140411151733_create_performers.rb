class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.string :title
      t.string :facebook_link
      t.string :instagram_link
      t.string :vk_link
      t.string :twitter_link

      t.timestamps
    end
  end
end
