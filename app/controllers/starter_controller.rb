class StarterController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    authorize! :view, :gold, :message => 'Access limited to Gold & Platinum members.'
    @user = current_user.email
    @planner = current_user.name
  end
end