class CreateUsersVocabulary < ActiveRecord::Migration[6.0]
  def change
    create_table :users_vocabularies do |t|
      t.references :user
      t.references :vocabulary
      t.datetime :last_tested
      t.integer :correct, :default => 0
      t.integer :incorrect, :default => 0

      t.index [:user_id, :vocabulary_id], :unique => true
    end
  end
end
