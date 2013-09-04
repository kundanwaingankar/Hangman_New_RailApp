class Profile < ActiveRecord::Base
  belongs_to :user
  validates :first_name, :last_name, presence: true, format: {with: /\A[a-z][a-z0-9_ -.]\Z/, message: "No special characters allowed except space & dot"}
  validates :gender, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: "enter valid email address"}
end
