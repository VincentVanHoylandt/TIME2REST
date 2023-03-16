class ChatroomsController < ApplicationController
  skip_after_action :verify_authorized, only: :destroy


  def create
    @user = current_user
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    if @chatroom.destroy
      redirect_to dashboard_path
    else
      render dashboard_path, status: :unprocessable_entity
    end

  end
end
