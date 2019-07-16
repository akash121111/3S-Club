class UserDetailsController < ApplicationController

  def create
    




    def update

        @user_detail=User.find(1).user_detail
        if @user_detail.update(user_details_params)
            redirect_to '/spaces/1/edit'     
          else
            redirect_to '/spaces/1/edit' 
          end

    end

    private

    private
    def user_params
     params.require(:user).permit(:Firstname,:Lastname,:Educationdetails,:Aboutuser,:City,:College,:Phonenumber,:Mobilenumber)
    end
end

