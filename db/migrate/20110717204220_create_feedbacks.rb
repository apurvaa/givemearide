class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
		t.integer "user_id"
		t.text "feedback"
		t.integer "rating"	
		t.boolean "isdeleted", :default => false
		t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
