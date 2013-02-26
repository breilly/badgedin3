class ReviewsMailer < ActionMailer::Base

  default :to => "customercare@badgedin.com"

  def new_ppcreview(ppcreview)
    @ppcreview = ppcreview
    mail(:from => ppcreview.email, :subject => "BadgedIn | PPC Plan Review")
  end
  
  def new_seoreview(seoreview)
    @seoreview = seoreview
    mail(:from => seoreview.email, :subject => "BadgedIn | SEO Plan Review")
  end
  
  def new_socialreview(socialreview)
    @socialreview = socialreview
    mail(:from => socialreview.email, :subject => "BadgedIn | Social Media Plan Review")
  end

end