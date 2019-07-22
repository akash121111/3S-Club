class UsersController < ApplicationController
  def index
  end

  def sign_up
  end

  def log_in
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_detail_path      
    else
      flash[:danger]=@user.errors.first[1]
      redirect_to edit_user_detail_path  
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


