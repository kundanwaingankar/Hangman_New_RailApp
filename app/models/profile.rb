class Profile < ActiveRecord::Base
  belongs_to :user
  validates :first_name, presence: true, format: {with: /^[a-zA-Z .]*$/, message: "Letters, space & dot allowed"}
  validates :last_name, presence: true, format: {with: /^[a-zA-Z .]*$/, message:  "Letters, space & dot allowed"}
  validates :gender, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: "enter valid email address"}
end
