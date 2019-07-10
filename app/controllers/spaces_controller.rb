class SpacesController < ApplicationController
    before_action :set_space, only: [:show, :destroy, :edit, :update]
    def index
        @space=Space.new
    end

    def edit
        
    end

    def update
        @space_details=User.find(1).spaces

        #@space_details.images.attach(params[:images])
      
        if @space_details.first.update(space_details_params)
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

    def set_space
        @space=Space.find(params[:id])
    end

end
