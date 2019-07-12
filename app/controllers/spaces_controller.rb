class SpacesController < ApplicationController
    before_action :set_space, only: [:show, :destroy, :edit, :update]
    def index
        @space=Space.new
    end

    def edit

    end

    def update
        
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :user_type_id)
    end

    def space_details_params
        params.require(:user_details).permit(:first_name, :last_name, :education_details, :about_user, :city, :college, :phone_number, :mobile_number, :user_id)
    end

    def set_space
        @space=Space.find(params[:id])
    end

end
