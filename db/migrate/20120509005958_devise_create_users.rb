class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.string :username
      t.integer :age
      t.string :gender
      t.integer :height_feet
      t.integer :height_inches
      t.integer :weight
      t.string :zipcode
      t.string :marital_status
      t.string :diagnostic_status
      t.string :orientation
      t.string :looking_for
      t.string :body_type
      t.string :smoke
      t.string :drink
      t.string :social_preference
      t.string :sign
      t.string :religion
      t.text :about
      t.text :diagnosis_story
      t.text :special_needs
      t.text :things_i_do
      t.text :things_i_dont_do
      t.text :obsessions
      t.text :who_id_like_to_meet
      t.text :seven_things_i_adore
      t.boolean :admin, :default => false

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
  # def change
    # create_table :users do |t|
      # t.string :username
      # t.integer :age
      # t.string :gender
      # t.integer :height
      # t.integer :weight
      # t.text :description
      # t.string :email
      # t.string :password_hash
      # t.string :password_salt
# 
      # t.timestamps
    # end
  # end
end