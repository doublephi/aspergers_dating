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
      t.integer :height
      t.integer :weight
      t.text :description
      t.integer :zipcode
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