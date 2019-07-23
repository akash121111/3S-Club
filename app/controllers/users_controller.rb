class UsersController < ApplicationController
  def index
  end

  def sign_up
  end

  def log_in
  end

  def update
    @user=User.find(params[:id])
    if @user.authenticate(params[:user][:current_password]) && @user.update(user_params)
      flash[:success]="Password Changed"
      redirect_to edit_user_detail_path      
    else
      flash[:danger]="Incorrect Password Details"
      redirect_to edit_user_detail_path  
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


