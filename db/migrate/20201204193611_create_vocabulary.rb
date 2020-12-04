class CreateVocabulary < ActiveRecord::Migration[6.0]
  def change
    create_table :vocabularies do |t|
      t.string :kanji
      t.string :hiragana
      t.string :katakana
      t.string :romaji
      t.string :meaning
      t.integer :level

      t.timestamps

      t.index :level
    end
  end
end
