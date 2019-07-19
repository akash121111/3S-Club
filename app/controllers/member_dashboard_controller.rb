class MemberDashboardController < ApplicationController



  def dashboard
   
  end

 

  def profile
    @member=User.find(session[:user_id])
    @membr=UserDetail.find_by(user_id:@member.id)
  end

  def create
    byebug
    @member = UserDetail.new(userdetail_params)
    @member.user_id=session[:user_id]
    if @member.save
      redirect_to "/profile"
    else
      redirect_to "/dashboard"
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
    @user=User.find_by(id:session[:user_id])
    @br=@user.booking_records
    
  end


  
  def userdetail_params
  
    #params[:user]=params
    params.permit(:first_name, :last_name, :education_details,:about_user,:city,:college,:phone_number,:mobile_number)
  end

  
end
