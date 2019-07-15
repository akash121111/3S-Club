class OwnersignupsController<ApplicationController
   skip_before_action :verify_authenticity_token
  def create

    @owner = User.new(owner_params)
    @owner.user_type_id=2
    if verify_recaptcha(model: @owner) && @owner.save 
    # save post
    flash[:notice] = "Owner successfully created"
    redirect_to '/owner_dashboard'
    else
      #flash[:"error"] = "Invalid email or password "
      redirect_to 'sign_up_user'
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

  private

  def owner_params
    params.permit(:email, :password, :password_confirmation)
  end
end