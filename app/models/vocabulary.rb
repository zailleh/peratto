# == Schema Information
#
# Table name: vocabularies
#
#  id         :bigint           not null, primary key
#  kanji      :string
#  hiragana   :string
#  katakana   :string
#  romaji     :string
#  meaning    :string
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vocabulary < ApplicationRecord

end
