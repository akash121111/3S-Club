class SpacesController < ApplicationController
    def index

        @space=Space.new
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :user_type_id)
    end

end
