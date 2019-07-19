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
<<<<<<< HEAD
        end
    end
end
=======
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
