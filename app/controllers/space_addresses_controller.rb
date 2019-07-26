class SpaceAddressesController < ApplicationController

    def create
    

    end


    def update
        @space_address=SpaceAddress.find(params[:id])
        if @space_address.update(space_address_params)
          flash[:success]="Address Updated Successfully"
          redirect_to '/spaces/'+@space_address.space.id.to_s+'/edit'    
        else
          flash[:danger]=@space_address.errors.first[1]
          redirect_to '/spaces/'+@space_address.space.id.to_s+'/edit' 
        end
    end

    private

    def space_address_params
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state, :latitude, :longitude)
    end
end
