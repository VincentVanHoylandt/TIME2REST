class MessagesController < ApplicationController

  def create
    raise
    @message = Message.new(message_params)
    @message.user = current_user
    @message.save
    # SendMessageJob.perform_later(@message)
  end

  private

  def message_params
    params.require(:Message).permit(:content)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
