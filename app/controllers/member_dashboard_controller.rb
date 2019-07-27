class MemberDashboardController < ApplicationController
  before_action :is_member?


  def dashboard
    @user1=UserDetail.find_by(user_id: session[:user_id])
    byebug
   if @user1.blank?
      @member=UserDetail.new
   else
     redirect_to "/mainpage"
   end
  end

 

  def profile
    @member=User.find(session[:user_id])
    @membr=UserDetail.find_by(user_id:@member.id)
  end

  def create
    
    @member = UserDetail.new(userdetail_params)
    @member.user_id=session[:user_id]
  
    if @member.save
      redirect_to "/dashboard"
      else
      render 'profile'
    end
  end

  

  def update
    @member=User.find_by(id:session[:user_id])
    @membr=UserDetail.find_by(user_id:@member.id)
    if @membr.update(userdetail_params)
     redirect_to "/searching"
    else
     redirect_to "/dashboard"
    end

  end

  def bookingdetail
    @users=MemberSubscription.where(user_id:session[:user_id])
    
    
  end


  
  def userdetail_params
  
    #params[:user]=params
    params.permit(:first_name, :last_name, :education_details,:about_user,:city,:college,:phone_number,:mobile_number)
  end

  
end
