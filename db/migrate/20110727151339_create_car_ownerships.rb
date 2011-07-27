class CreateCarOwnerships < ActiveRecord::Migration
  def self.up
    create_table :car_ownerships do |t|
	  t.references :car
	  t.references :user	
	  t.string "picture"
	  t.integer "carrating"
      t.timestamps
    end
	add_index("car_ownerships", "user_id")
	add_index("car_ownerships", "car_id")
  end

  def self.down
    drop_table :car_ownerships
  end
end
