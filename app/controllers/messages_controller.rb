class MessagesController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom])
    @message = Message.new(content: params[:message][:name])
    @message.user = current_user
    @message.chatroom = @chatroom
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    end
    # SendMessageJob.perform_later(@message)
    authorize @message
  end

  private

  def message_params
    params.require(:Message).permit(:content)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
