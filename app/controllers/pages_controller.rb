class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @participants = @user.participants
    @offers = @user.offers
    @message = Message.new()
  end

end
