class User < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: {case_sensitive: false}, length: {in: 6..20, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"}
  validates :password, presence: true, length: {in: 6..20, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"},format: {with: /\d/, message: "Password must contain at least one Number"}
  has_one :profile
  has_one :game
  validates_associated :profile
  validates_associated :game

end
