class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :email_digest, :index => { :unique => true }
      t.text :password_digest
      t.string :display_name
      t.datetime :last_login
      t.timestamps
    end
  end
end
