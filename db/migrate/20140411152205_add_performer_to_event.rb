class AddPerformerToEvent < ActiveRecord::Migration
  def change
    add_column :events, :performer_id, :integer
  end
end
