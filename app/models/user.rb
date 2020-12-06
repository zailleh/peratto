# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email_digest    :text
#  password_digest :text
#  display_name    :string
#  last_login      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord

  has_secure_password
  attr_accessor :email

  has_many :users_vocabularies

  validates :email_digest, uniqueness: { message: "Email has already been taken" }

  def email=(new_email)
    @email = new_email.downcase
    self.email_digest = Digest::SHA256.hexdigest(@email + Rails.application.credentials.salt)
  end

  def self.find_by_email(email)
    find_by(
      :email_digest => Digest::SHA256.hexdigest(email.downcase + Rails.application.credentials.salt)
    )
  end

end
