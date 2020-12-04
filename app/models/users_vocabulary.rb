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

end
