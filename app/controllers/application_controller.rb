class ApplicationController < ActionController::Base
	 helper_method :current_user, :logged_in?

    def current_user
        if session[:user_id]
        @current_user ||= User.find(session[:user_id])
        else
           @current_user=nil
        end
    end
<<<<<<< HEAD
    
=======
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    def logged_in?
        !!current_user
    end

    def require_user
        
        if !logged_in?
            flash[:danger] = "You must be logged in to perform that action"
            redirect_to root_path
        end
end
end
