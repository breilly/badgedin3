class BasicsquizzesPpcController < ApplicationController

  def howsework_quiz
  end
  
  def howsework_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def ppc101_quiz
  end
  
  def ppc101_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def sestructure_quiz
  end
  
  def sestructure_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def trackingreporting_quiz
  end
  
  def trackingreporting_badge
    @badge = current_user.badges.build if signed_in?
  end
end