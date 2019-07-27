class MemberDashboardController < ApplicationController
  before_action :is_member?
  protect_from_forgery
before_action :set_user_addresses, only: [:profile]
 def set_user_addresses
 
      @user=User.find(session[:user_id])
      if @user.user_addresses.first ==nil
        ua=UserAddress.new(user_id: @user.id , user_address_type_id: 1)
        ua.save
        ua=UserAddress.new(user_id: @user.id , user_address_type_id: 2)
        ua.save
      end
      @user_addresses=@user.user_addresses
    end



  def dashboard
    @user1=UserDetail.find_by(user_id: session[:user_id])
    
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
