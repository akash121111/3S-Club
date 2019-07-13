class SpacesController < ApplicationController
    before_action :set_space, only: [:show, :destroy, :edit, :update]
    def index
        
    end

    def edit
        @user_detail=User.find(session[:user_id])
        @space=Space.find(params[:id])
    end

    def new
        @user_detail=User.find(session[:user_id])
        @space=Space.new
    end

    def update
        @space_details=User.find(session[:user_id]).spaces

        #@space_details.images.attach(params[:images])
      
        if @space_details.first.update(space_details_params)
          redirect_to edit_space_path     
        else
          redirect_to '/spaces/1/edit' 
        end
    end

    def destroy
        if @space.destroy
            redirect_to '/spaces/1/edit'
        else
            redirect_to '/spaces/1/edit' 
        end

    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :user_type_id)
    end

    def space_details_params
        params.require(:space).permit(:space_address,:size,:dimensions,:floor_number,:number_of_toilets,:nearby_landmark, :images)
    end

    def user_details_params
        params.require(:user_details).permit(:first_name, :last_name, :education_details, :about_user, :city, :college, :phone_number, :mobile_number, :user_id)
    end

    def set_space
        @user_detail=User.find(session[:user_id])
        @space=Space.find(params[:id])
    end

end
