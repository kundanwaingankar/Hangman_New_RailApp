class User < ActiveRecord::Base

  validates :user_name, presence: true, uniqueness: {case_sensitive: false}, length: {in: 6..25, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"}
  validates :password, presence: true, length: {in: 6..25, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"},format: {with: /\d/, message: "must contain at least one Number"}
  has_many :profile , dependent: :destroy#, :class_name => "Profile"
  accepts_nested_attributes_for :profile

  has_one :game    , dependent: :destroy

  validates_associated :profile
  validates_associated :game

end
