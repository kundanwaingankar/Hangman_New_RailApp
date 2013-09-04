class Game < ActiveRecord::Base
  belongs_to :user
  validates :played, :win, :lose, numericality: {only_integer: true}

end
