class ChatsController < ApplicationController
  before_action :cookie_set

  def index
    session[:conversations] ||= []
    @bookings=BookingRecord.all
    @conversations = Conversation.includes(:recipient, :messages).find(session[:conversations])
  end
end
