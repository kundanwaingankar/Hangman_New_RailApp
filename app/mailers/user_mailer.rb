class UserMailer < ActionMailer::Base
  default from: "kundan@iternia.com"
  def welcome_email(user)
    @user = user
    mail(to: @user.profile.email, subject: 'Welcome to My Awesome Site')
  end
end
