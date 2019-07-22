class UserDetailsController < ApplicationController
  before_action :set_user_addresses, only: [:edit]

    def new

    end
    
    def create

    end
    def edit
      @user=User.find(session[:user_id])
      @user_detail=@user.user_detail
    end

    def update
     
        @user_detail=User.find(session[:user_id]).user_detail
        if @user_detail.update(user_details_params)
          redirect_to edit_user_detail_path    
        else
          flash[:danger]=@user_detail.errors.first[1]
          redirect_to edit_user_detail_path
        end

    end


    private
    
    def user_details_params
        params.require(:user_detail).permit( :first_name,:last_name,:about_user,:phone_number,:mobile_number)
    end

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
end


