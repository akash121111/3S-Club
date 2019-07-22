class OwnersignupsController<ApplicationController
   skip_before_action :verify_authenticity_token

   def sign_up

   end
  def create
    
    @owner = User.new(signup_params)
    @owner.user_type_id=2
    if verify_recaptcha(model: @owner) && @owner.save 
      @user_detail=UserDetail.new(user_params)
      @user_detail.user_id=@owner.id
      @user_detail.save
     
      
      redirect_to "/login_user"
    else
   
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
    redirect_to'/login_user'
     
   end

  private

  def signup_params
    params.permit(:email, :password, :password_confirmation)
  end
  def user_params
    params.permit(:first_name, :last_name, :mobile_number)
  end
end