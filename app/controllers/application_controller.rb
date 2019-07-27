class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
    helper_method :current_user, :logged_in?

    private

    def current_user
        if session[:user_id]
        @current_user ||= User.find(session[:user_id])
        else
           @current_user=nil
        end
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
    def is_owner?
        if logged_in? && current_user.user_type_id==2
            @user_type=current_user.id
        else
            flash[:error]="You are not correct user please login here"
            redirect_to  root_url
        end
    end
    def is_member?
        if logged_in? && current_user.user_type_id==1
            @user_type=current_user.id
        else
            flash[:error]="You are not correct user please login here"
            redirect_to root_url
        end
    end
    
end
