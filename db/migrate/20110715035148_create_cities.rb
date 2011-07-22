class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
		t.string "name"
		t.string "state"
		t.string "country"
		t.boolean "allowed_city", :default => true
		t.boolean "isdeleted", :default => false
		t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
