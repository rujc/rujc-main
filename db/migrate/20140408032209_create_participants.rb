class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.string :city, null: false, default: ''
      t.integer :age
      t.string :phone_number, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :master_class, null: false, default: ''
      t.string :will_perform, null: false, default: ''
      t.string :visit_special_guests, null: false, default: ''
      t.string :payment_method, null: false, default: ''
      t.string :will_volunteer

      t.timestamps
    end
  end
end
