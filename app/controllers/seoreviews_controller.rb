class SeoreviewsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    authorize! :view, :platinum, :message => 'Access limited to Platinum members.'
    @user = current_user.email
    @planner = current_user.name
    @seoreview = Seoreview.new
  end

  def create
    @seoreview = Seoreview.new(params[:seoreview])
    if @seoreview.valid?
      ReviewsMailer.new_seoreview(@seoreview).deliver
      redirect_to new_seoreview_path, notice: "Plan sent! We'll follow up within 2 business days."
    else
      render "new"
    end
  end
end
