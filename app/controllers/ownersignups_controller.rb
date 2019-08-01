class OwnersignupsController<ApplicationController
   skip_before_action :verify_authenticity_token

   def sign_up

   end
  def create
        @owner = User.new(signup_params)
    @owner.user_type_id=2
    if @owner.save
      UserMailer.signup_email(@owner).deliver
      flash[:success] ="Your registrations is sucessfully completed.Please check registered email"
      redirect_to '/login_user'
    else
      flash[:success] ="Ooooppss, something went wrong! your registration attempt was unsuccessful."
      redirect_to '/sign_up_user'
    end
  end

  def show
    # doesn't need to assign the flash notice to the template, that's done automatically
  end

  def login
  end

  def destroy
    session[:user_id]=nil
    flash[:sucess] = "Logged out"
    redirect_to'/login_user' 
   end

   def confirm_email
   user = User.find_by_auth_token(params[:token])
    if user
      user.update(signup_active: true)
      user.update(auth_token:nil)
      flash[:success] = "Welcome to the Sample App! Your email as Owner has been confirmed.
      Please sign in to continue."
      redirect_to root_url
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
    end
  end

  private

  def signup_params
    params.permit(:email, :password, :password_confirmation)
  end
 
end