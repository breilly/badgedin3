class ExpertsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    authorize! :view, :platinum, :message => 'Access limited to Platinum members.'
    @user = current_user.email
    @planner = current_user.name
    @expert = Expert.new
  end

  def create
    #@user.email = current_user.email
    @expert = Expert.new(params[:expert])
    if @expert.valid?
      ExpertMailer.new_expert(@expert).deliver
      redirect_to new_expert_path, notice: "Question sent! We'll follow up as soon as we can."
    else
      render "new"
    end
  end
end
