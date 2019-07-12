class UserDetailsController < ApplicationController
    def update

        @user_detail=User.find(1).user_detail
        if @user_detail.update(user_details_params)
            redirect_to '/spaces/1/edit'     
          else
            redirect_to '/spaces/1/edit' 
          end

    end

    private

    def user_details_params
        params.require(:user_detail).permit( :fist_name,:last_name,:about_user,:phone_number,:mobile_number)
    end
end


