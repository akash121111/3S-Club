class UserDetailController < ApplicationController

    def member_form
    
    end

    def create
        @userdetail=Userdetail.create(params[])
    end

    
        def update
            @userdetail = User.find(1)
            if @userdetail.update(user_params)
                flash[:notice] = "User was successfully updated"
                redirect_to user_path(@user)
            else
                render 'home'
            end
        end    
    
    private
        def user_params
         params.require(:user).permit(:Firstname,:Lastname,:Educationdetails,:Aboutuser,:City,:College,:Phonenumber,:Mobilenumber)
        end
end