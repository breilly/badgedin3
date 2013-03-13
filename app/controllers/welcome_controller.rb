class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  
  
  def silver
    authorize! :view, :silver, :message => 'Access limited to Silver members.'
  end
  
  def gold
    authorize! :view, :gold, :message => 'Access limited to Gold members.'
  end
  
  def platinum
    authorize! :view, :platinum, :message => 'Access limited to Platinum members.'
  end
  
  
end