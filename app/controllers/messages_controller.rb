class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Message sent! Thank you for contacting us."
    else
      render "new"
    end
  end
end
