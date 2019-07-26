   class UserbookingController < ApplicationController

    
   def destroy
                              @booking = BookingRecord.find(params[:id])
                              @time_add=@booking.booking_time
                              @user_id=@booking.user_id
                              @space_id=@booking.space_id
                             
                              @check_Condition=MemberSubscription.find_by("space_id = ? and user_id=?",@space_id,@user_id)
                    

                              @change_remain_time_wallet=@check_Condition.try(:time_wallet)
                              @new_remain_time_wallet=@change_remain_time_wallet.to_f+@time_add.to_f
                              @check_Condition.time_wallet=@new_remain_time_wallet
                      
                              @check_Condition.save
                              @booking.destroy

                              redirect_to userbookingrecords_path
    end
    
    def new

        @space=Space.new
       
    end
     def edit
        
        @user=User.find(session[:user_id])
        @space=Space.find(params[:id])
        @add=SpaceAddress.where(space_id: @space).first
        @user_id_space=@space.user_id
        @email=User.find_by(id:  @user_id_space)
        @phoneandMobile=UserDetail.where(user_id:  @user_id_space).first
        @space_available_day=@space.space_available_day

        @space_add=SpaceAddress.find_by(space_id: @space)


          @hash = Gmaps4rails.build_markers(@space_add) do |r, marker|
          marker.lat r.latitude
          marker.lng r.longitude
          marker.infowindow r.city
          end
    end


    def space_details_params
        params.require(:space).permit(:space_name,:size,:dimensions,:floor_number,:number_of_toilets,:nearby_landmark, images: [])
    end

   

    end