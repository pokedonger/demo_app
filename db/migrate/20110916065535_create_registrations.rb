class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
	  t.string :first_name
	  t.string :last_name
      t.string :email
      t.string :address1
      t.string :address2
	  t.string :state
      t.string :terms
      t.string :highschool_name
      t.string :highschool_address
      t.string :highschool_city
      t.integer :highschool_phone
	  t.integer :prize
	  t.integer :zip
      t.string :facebook_id
      t.string :facebook_email
      t.string :facebook_first_name
      t.string :facebook_last_name
      t.string :facebook_gender
      t.timestamps
    end
	 add_index :registrations, :email
  end
end
