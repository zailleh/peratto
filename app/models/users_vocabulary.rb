# == Schema Information
#
# Table name: users_vocabularies
#
#  id            :bigint           not null, primary key
#  user_id       :bigint
#  vocabulary_id :bigint
#  last_tested   :datetime
#  correct       :integer          default(0)
#  incorrect     :integer          default(0)
#
class UsersVocabulary < ApplicationRecord

  belongs_to :user
  belongs_to :vocabulary

  delegate :kanji, :hiragana, :meaning, :jlpt_level, :to => :vocabulary

  before_save :touch_last_tested

  def times_practiced
    correct + incorrect
  end

  def self.counts_by_level(user)
    joins(:vocabulary)
      .where(:user => user)
      .group('"vocabularies"."level"')
      .pluck('"vocabularies"."level", COUNT("users_vocabularies"."id"), SUM(correct), SUM(incorrect)')
      .each_with_object({}) do |row, results|
        level, studied, correct, incorrect = row

        results[level] = {
          studied: studied,
          correct: correct,
          incorrect: incorrect,
        }
      end
  end

  private

  def touch_last_tested
    last_tested = Time.current
  end

end
