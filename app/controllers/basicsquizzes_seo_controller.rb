class BasicsquizzesSeoController < ApplicationController

  def howsework_quiz
  end
  
  def howsework_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def offsite_quiz
  end
  
  def offsite_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def onsite_quiz
  end
  
  def onsite_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def seo101_quiz
  end
  
  def seo101_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def setools_quiz
  end
  
  def setools_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def trackingreporting_quiz
  end
  
  def trackingreporting_badge
    @badge = current_user.badges.build if signed_in?
  end
end