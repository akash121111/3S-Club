class OwnersignupsController<ApplicationController
   skip_before_action :verify_authenticity_token
   def show
    @User = User.find(params[:id])
     
   end
   def new
    @owner = User.new
     
   end

  def create
    @owner = User.new(owner_params)
    if verify_recaptcha(model: @owner) && @owner.save
      UserMailer.signup_confirmation(@User).deliver
      
    end
    
    if verify_recaptcha(model: @owner) && @owner.save 
    # save post
    #flash[:notice] = "Post successfully created"
    redirect_to login, notice: "signed up successfully"
   
    
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
    redirect_to'/login'
     
   end

  private

  def owner_params
    params.permit(:email, :password, :password_confirmation)
  end
end