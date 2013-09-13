class Profile < ActiveRecord::Base
  belongs_to :user
  validates :first_name, :last_name, presence: true, format: {with: /\A[a-zA-Z\s .]+\z/, message: "No special characters allowed except space & dot"}
  validates :gender, :inclusion => {:in => [true, false]} #, in: %w( m, f )
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: "enter valid email address"}

=begin
  before_validation :ensure_login_has_a_value

  private
  def ensure_login_has_a_value
    if first_name.nil?
      self.first_name = first_name unless first_name.blank?
    end
  end
=end

  before_create :email_to_lower_case

  private
  def email_to_lower_case
    ## convert email to lower case
    self.email = self.email.downcase

  end

  #  /\Afoo\z/
end
