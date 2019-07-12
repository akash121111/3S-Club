class UsersController < ApplicationController
  def index
  end

  def sign_up
  end

  def log_in
  end

  def update
    @user=User.find(1)
    if @user.update(user_params)
      redirect_to '/spaces/1/edit'     
    else
      @user.errors.full_messages 
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


