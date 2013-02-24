class NotificationsMailer < ActionMailer::Base

  default :from => "customercare@badgedin.com"
  default :to => "customercare@badgedin.com"

  def new_message(message)
    @message = message
    mail(:subject => "BadgedIn | Contact")
  end

end
