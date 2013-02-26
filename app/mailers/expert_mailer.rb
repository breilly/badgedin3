class ExpertMailer < ActionMailer::Base

  default :to => "customercare@badgedin.com"

  def new_expert(expert)
    @expert = expert
    mail(:from => expert.email, :subject => "BadgedIn | Expert Access")
  end
end