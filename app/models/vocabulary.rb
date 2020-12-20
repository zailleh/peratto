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

  has_many :users_vocabularies

  def self.counts_by_level
    group(:level).order(:level => :desc).pluck('level, COUNT(id)').to_h
  end

end
