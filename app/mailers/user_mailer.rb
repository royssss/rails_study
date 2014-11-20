class UserMailer < ActionMailer::Base
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(from: 'sxpd7788@163.com',to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
