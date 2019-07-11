class SpaceAddressesController < ApplicationController
    def update
        @space_address=User.find(params[:id])
      
        if @space_address.update(space_address_params)
          redirect_to '/spaces/1/edit'     
        else
          redirect_to '/spaces/1/edit' 
        end
    end

    private

    def space_address_params
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state)

    end
end
