class OwnersignupsController<ApplicationController
   skip_before_action :verify_authenticity_token
<<<<<<< HEAD

   def sign_up

   end
  def create
    
    @owner = User.new(owner_params)
    @owner.user_type_id=2
=======
  def create
    
    @owner = User.new(owner_params)
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    if verify_recaptcha(model: @owner) && @owner.save 
      # save post
      #flash[:notice] = "Post successfully created"
  
      #flash[:"error"] = "Invalid email or password "
      
<<<<<<< HEAD
      redirect_to "/owner_dashboard"
=======
      redirect_to "login_in_owner"
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    else
      #flash[:"error"] = "Invalid email or password "
       redirect_to login_in_owner_url
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
<<<<<<< HEAD
    redirect_to'/login_user'
=======
    redirect_to'/login'
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
     
   end

  private

  def owner_params
    params.permit(:email, :password, :password_confirmation)
  end
end