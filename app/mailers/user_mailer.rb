class UserMailer < ActionMailer::Base
  default :from => "customercare@badgedin.com"
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end
end