class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @offers = @user.offers
    @message = Message.new
    @chatrooms = find_chatrooms
  end

  private

  def find_user2
    return nil if @chatrooms == []
    if @chatrooms[0].participants[0].user_id == current_user.id
      User.find(@chatrooms[0].participants[0].user_2)
    else
      User.find(@chatrooms[0].participants[0].user_id)
    end
  end

  def find_chatrooms
    array = []
    participants = Participant.all
    participants.each do |participant|
      if participant.user_id == current_user.id || participant.user_2 == current_user.id
        array << participant.chatroom
      end
    end
    return array
  end

end
