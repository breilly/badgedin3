class BasicsquizzesSocialController < ApplicationController

  def fbadmin_quiz
  end
  
  def fbadmin_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def fbengagemeasure_quiz
  end
  
  def fbengagemeasure_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def fblikes_quiz
  end
  
  def fblikes_badge
    @badge = current_user.badges.build if signed_in?
  end
  
  def fbtimeline_quiz
  end
  
  def fbtimeline_badge
    @badge = current_user.badges.build if signed_in?
  end
end