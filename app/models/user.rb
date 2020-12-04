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

end
