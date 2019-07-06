class ApplicationController < ActionController::Base
	 helper_method :current_user, :logged_in?

    def current_user
        
        @current_user ||= User.find_by_id(session[:email]) if session[:email]
    end

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
