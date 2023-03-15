class ParticipantsController < ApplicationController
  def create
    @chatroom = Chatroom.create
    @participant = Participant.create(user_id: current_user.id, user_2: params[:user], chatroom_id: @chatroom.id)
    authorize @participant
  end
end
