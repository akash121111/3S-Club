class UsersController < ApplicationController
  def index
  end
def kat_gaya

end
  def sign_up
  end

  def log_in
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to '/spaces/1/edit'     
    else
      redirect_to '/spaces/1/edit' 
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


