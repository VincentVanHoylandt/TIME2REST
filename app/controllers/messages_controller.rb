class MessagesController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom])
    @message = Message.new(content: params[:message][:name])
    @message.user = current_user
    @message.chatroom = @chatroom
    authorize @message
    if @message.save
      # ChatroomChannel.broadcast_to(
      #   @chatroom,
      #   render_to_string(partial: "message", locals: {message: @message, sender_id: @message.user_id})
      # )
      # head :ok

      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id, content: @message.content, sender_name: @message.user.first_name
      )
      head :ok

    end
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
