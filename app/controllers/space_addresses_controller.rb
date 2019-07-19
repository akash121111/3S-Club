class SpaceAddressesController < ApplicationController
<<<<<<< HEAD

    def create
    

    end


    def update
        @space_address=SpaceAddress.find(params[:id])
        if @space_address.update(space_address_params)
          redirect_to '/spaces/'+@space_address.space.id.to_s+'/edit'    
        else
          redirect_to '/spaces/'+@space_address.space.id.to_s+'/edit' 
=======
    def update
        @space_address=User.find(1).spaces.first.space_address

      
        if @space_address.update(space_address_params)
          redirect_to '/spaces/1/edit'     
        else
          redirect_to '/spaces/1/edit' 
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
        end
    end

    private

    def space_address_params
<<<<<<< HEAD
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state, :latitude, :longitude)
=======
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state, :latitude, :longitude, :a)
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    end
end
