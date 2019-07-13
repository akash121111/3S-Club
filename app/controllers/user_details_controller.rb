class UserDetailsController < ApplicationController

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
            redirect_to edit_user_detail_path
          end

    end


    private

    def user_details_params
        params.require(:user_detail).permit( :fist_name,:last_name,:about_user,:phone_number,:mobile_number)
    end
end


