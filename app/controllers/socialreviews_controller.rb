class SocialreviewsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    authorize! :view, :platinum, :message => 'Access limited to Platinum members.'
    @user = current_user.email
    @planner = current_user.name
    @socialreview = Socialreview.new
  end

  def create
    @socialreview = Socialreview.new(params[:socialreview])
    if @socialreview.valid?
      ReviewsMailer.new_socialreview(@socialreview).deliver
      redirect_to new_socialreview_path, notice: "Plan sent! We'll follow up within 2 business days."
    else
      render "new"
    end
  end
end