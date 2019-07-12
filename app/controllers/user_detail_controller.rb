class UserDetailController < ApplicationController

    def Userdetail
    @userdetail=Userdetail.new
    end
    
    def update
        @userdetail=Userdetail.find_by(user_id)
        if userdetail.update(userdetail_params)
            flash[:notice]="user detail was successfully updated"
            redirect_to_user_path
        else
            render 'home'