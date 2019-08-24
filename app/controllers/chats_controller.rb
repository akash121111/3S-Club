class ChatsController < ApplicationController
  before_action :cookie_set

  def index
    session[:conversations] ||= []
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages).find(session[:conversations])
  end
end
