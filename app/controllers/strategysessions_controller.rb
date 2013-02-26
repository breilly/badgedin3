class StrategysessionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @user = current_user.email
    @planner = current_user.name
  end
end