class User < ActiveRecord::Base
  validates :user_name, :presence => true ,:message => 'is required' ,:uniqueness => true
  validates :password, :presence => true ,:message => 'is required'
  has_one :profile
  has_one :game
end
