class AddTwitterMessageToEvents < ActiveRecord::Migration
  def change
    add_column :events, :twitter_message, :string
  end
end
