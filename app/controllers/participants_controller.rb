class ParticipantsController < ApplicationController
  def create
    @chatroom = Chatroom.create
    @participant = Participant.create(user_id: current_user.id, user_2: params[:user], chatroom_id: @chatroom.id)
    authorize @participant
  end

  def destroy
    @participant = Participant.find(params[:id])
    authorize @participant
    if @participant.destroy

      redirect_to dashboard_path
    else
      render dashboard_path, status: :unprocessable_entity
    end
  end
end
