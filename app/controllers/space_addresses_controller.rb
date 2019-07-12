class SpaceAddressesController < ApplicationController
    def update
        @space_address=User.find(params[:id]).spaces.first.space_address

      
        if @space_address.update(space_address_params)
          redirect_to '/spaces/1/edit'     
        else
          redirect_to '/spaces/1/edit' 
        end
    end

    private

    def space_address_params
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state, :latitude, :longitude, :a)
    end
end
