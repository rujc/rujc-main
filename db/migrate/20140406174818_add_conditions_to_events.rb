class AddConditionsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :conditions, :string, null: false, default: 'free'
  end
end
