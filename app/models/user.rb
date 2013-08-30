class User < ActiveRecord::Base
  validates :user_name, :presence => true ,:uniqueness => true
  validates :password, :presence => true
  has_one :profile
  has_one :game
end
