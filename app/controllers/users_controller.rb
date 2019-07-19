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
<<<<<<< HEAD
      redirect_to edit_user_detail_path      
    else
      redirect_to edit_user_detail_path  
=======
      redirect_to '/spaces/1/edit'     
    else
      redirect_to '/spaces/1/edit' 
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


