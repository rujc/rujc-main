class AddPhoneNumberToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :phone_number, :string, null: false
  end
end
