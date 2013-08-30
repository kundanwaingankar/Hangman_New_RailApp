class User < ActiveRecord::Base
  validates :username, :presence => true ,:message => 'is required' ,:uniqueness => true
  validates :password, :presence => true ,:message => 'is required'
  has_one :profile
  has_one :game
end
