class UserController < ApplicationController
    
    def new
            @user = User.new
     end

    def update
            @user = User.find(1)
            if @user.update(user_params)
                flash[:notice] = "User was successfully updated"
                redirect_to user_path(@user)
            else
                render 'edit'
            end
    end    
    
    private
        def user_params
         params.require(:user).permit(:Firstname,:Lastname,:Educationdetails,:Aboutuser,:City,:College,:Phonenumber,:Mobilenumber)
        end
    end