class SessionsController < ApplicationController
  def index

  end

  def home
    
  end

  def new
    
  end

  def create
<<<<<<< HEAD
    	
  	user = User.find_by_email(params[:session][:email])
       if user && user.authenticate(params[:session][:password_digest])
        session[:user_id]= user.id
        user_type=user.user_type_id

        if user_type==1
          redirect_to '/dashboard' , notice: "Logged in"
        else
          redirect_to '/owner_dashboard' , notice: "Logged in"
          
        end
        #flash[:success] = "Login successful"
        
       else
        flash[:success] = "Username or Password incorrect"
=======
    
  	user = User.find_by_email(params[:session][:email])
      
       if user && user.authenticate(params[:session][:password_digest])
        session[:user_id]= user.id
        #flash[:success] = "Login successful"
        redirect_to '/dashboard' 
       else
        flash.now[:alert] = "Username or Password incorrect"
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
        redirect_to '/login_user'
       end
  end

  def destroy
  	session[:user_id]= nil
        #flash[:success] = "Logged out"
<<<<<<< HEAD
        redirect_to 'user#index' , notice: "Logged in"
=======
        redirect_to 'login' , notice: "Logged in"
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
  end
end
