class Profile < ActiveRecord::Base
  belongs_to :user
  validates :first_name, :last_name, presence: true, format: {with: /\A[a-zA-Z\s .]+\z/, message: "No special characters allowed except space & dot"}
  #validates :gender, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: "enter valid email address"}

  before_create :email_to_lower_case

  private
  def email_to_lower_case
    ## convert email to lower case
    self.email = self.email.downcase
  end

  #/\Afoo\z/
end
