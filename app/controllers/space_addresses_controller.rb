class SpaceAddressesController < ApplicationController

    def create
      @space_address=SpaceAddress.new
      house_number, :street, :city, :pincode, :state, :latitude, :longitude
      @space_address.house_number=params[:space_address][:house_number]
      @space_address.street=params[:space_address][:street]
      @space_address.city=params[:space_address][:city]
      @space_address.pincode=params[:space_address][:pincode]
      @space_address.state=params[:space_address][:state]
      @space_address.latitude=params[:space_address][:latitude]
      @space_address.longitude=params[:space_address][:longitude]
      if @article.save
          flash[:success]="Article is successfully created"
          redirect_to articles_url       
      else
          redirect_to new_user_path
      end

    end


    def update
        @space_address=SpaceAddress.find(params[:id])

      
        if @space_address.update(space_address_params)
          redirect_to '/spaces/1/edit'     
        else
          redirect_to '/spaces/1/edit' 
        end
    end

    private

    def space_address_params
        params.require(:space_address).permit(:house_number, :street, :city, :pincode, :state, :latitude, :longitude)
    end
end
