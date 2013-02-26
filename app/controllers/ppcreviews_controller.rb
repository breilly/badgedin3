class PpcreviewsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    authorize! :view, :platinum, :message => 'Access limited to Platinum members.'
    @user = current_user.email
    @planner = current_user.name
    @ppcreview = Ppcreview.new
  end

  def create
    #@user.email = current_user.email
    @ppcreview = Ppcreview.new(params[:ppcreview])
    if @ppcreview.valid?
      ReviewsMailer.new_ppcreview(@ppcreview).deliver
      redirect_to new_ppcreview_path, notice: "Plan sent! We'll follow up within 2 business days."
    else
      render "new"
    end
  end
end
