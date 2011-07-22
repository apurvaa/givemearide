class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
		t.integer "user_id"
		t.integer "policy_id"
		t.integer "car_id"
		t.string "tripname"
		t.date "tripdate"
		t.time "triptime"
		t.integer "numpassengers"
		t.text "description"
		t.integer "price"
		t.integer "recommended_price"
		t.integer "origin"
		t.integer "destination"
		t.boolean "isdeleted", :default => false
		t.timestamps
    end
	add_index("trips", "user_id")
	add_index("trips", "policy_id")
	add_index("trips", "car_id")
  end

  def self.down
    drop_table :trips
  end
end
