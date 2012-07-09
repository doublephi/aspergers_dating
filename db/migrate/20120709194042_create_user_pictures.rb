class CreateUserPictures < ActiveRecord::Migration
  def self.up
    create_table :user_pictures do |t|
      t.integer :user_id
      t.has_attached_file :picture
      t.timestamps
    end
  end
  
  def self.down
    drop_table :user_pictures
  end
end