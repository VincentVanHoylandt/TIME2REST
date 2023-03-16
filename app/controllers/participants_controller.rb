class ParticipantsController < ApplicationController
  def create
    @chatroom = Chatroom.create
    @participant = Participant.new(user_id: current_user.id, user_2: params[:user], chatroom_id: @chatroom.id)
    authorize @participant
    if @participant.save
      redirect_to dashboard_path(where: 'msg')
    else
      render dashboard_path, status: :unprocessable_entity
    end
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
