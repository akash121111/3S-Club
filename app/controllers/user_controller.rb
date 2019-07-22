class UserController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
	end	

    def list
    @users = User.all
    end

	def new
		
	end

   

  def sign_up
	end

	def create
    
    @user = User.new(user_params)
    @user.user_type_id = 1
    if @user.save
      UserMailer.signup_email(@user).deliver
      flash[:success] ="Your registrations is sucessfully completed.Please check registered email"
      redirect_to '/login_user'
    else
      flash[:success] ="Ooooppss, something went wrong! your registration attempt was unsuccessful."
      redirect_to '/sign_up_user'
    end
  end

  def user_params
    #params[:user]=params
    params.permit(:email, :password, :password_confirmation)
  end
    

    
  def new
    @user = User.new
  end

  def destroy
    session[:user_id]= nil
    flash[:success] = "Logged out"
    redirect_to '/user'
   end
  
  def confirm_email


    user = User.find_by_auth_token(params[:token])
    if user
      user.update(signup_active: true)
      user.update(auth_token:nil)
      flash[:success] = "Welcome to the Sample App! Your email has been confirmed.
      Please sign in to continue."
      redirect_to root_url
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
    end
  end
end

    #captcha_message = "The data you entered for the CAPTCHA wasn't correct.  Please try again"
    #@user = User.new(user_params)
    #if !verify_recaptcha(model: @user, message: captcha_message) || !@user.save
     # render "new"
    #end

   # @user = User.new(user_params)
    #if verify_recaptcha(model: @user) && @user.save
    #redirect_to '/login'
     #else
     #   render 'sign_up'
      
#@user = User.new(user_params)
 #recaptcha_valid = verify_recaptcha(model: @user)
 
#if recaptcha_valid

 #if @user.save
  #redirect_to '/login'
#else
 #render 'sign_up'
#end
#else
    # Score is below threshold, so user may be a bot. Show a challenge, require multi-factor
    # authentication, or do something else.
 #render 'sign_up'
  #end



    
