class SessionsController < ApplicationController
  def index

  end

  def home
    
  end

  def new
    
  end

  def create
    	
  	user = User.find_by_email(params[:session][:email])
       if user && user.authenticate(params[:session][:password_digest])
        session[:user_id]= user.id
        user_type=user.user_type_id

        if user_type==1
          redirect_to '/dashboard' , notice: "Logged in"
        else
          redirect_to spaces_path , notice: "Logged in"
          
        end
        #flash[:success] = "Login successful"
        
       else
        flash[:success] = "Username or Password incorrect"
        redirect_to '/login_user'
       end
  end

  def destroy
  	session[:user_id]= nil
        #flash[:success] = "Logged out"
        redirect_to 'user#index' , notice: "Logged in"
  end
end
