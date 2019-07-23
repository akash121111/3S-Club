class SessionsController < ApplicationController
  def index

  end

  def create
  	user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password_digest])
          if user.signup_active == true
            session[:user_id]= user.id
            user_type=user.user_type_id
            if user_type==1
              redirect_to '/dashboard',notice:"Logged in!!"
            else
            redirect_to '/owner_dashboard',notice:"Logged in!!"
            end
          else
          flash[:success] = 'Please activate your account by following the 
          instructions in the account confirmation email you received to proceed'
          redirect_to '/login_user'
          end     
        else
        flash[:success] = "ooohhhh...Username or Password incorrect"
        redirect_to '/login_user'
        end
  end

  def destroy
    User.find(session[:user_id]).destroy
  	session[:user_id]= nil
    redirect_to 'root_url' , notice: "Logged out!"
  end
end
