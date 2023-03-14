class ParticipantsController < ApplicationController
  def create
    @chatroom = Chatroom.create
    @participants = [Participant.create(user_id: params[:user], chatroom_id: @chatroom.id),
                     Participant.create(user_id: current_user.id, chatroom_id: @chatroom.id)]
  end
end
