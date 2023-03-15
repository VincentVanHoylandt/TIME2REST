class ChatroomsController < ApplicationController

  def create
    @user = current_user
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    if @chatroom.destroy
      redirect_to dashboard_path
    else
      render dashboard_path, status: :unprocessable_entity
    end

  end
end
