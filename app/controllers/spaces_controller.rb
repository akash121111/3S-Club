class SpacesController < ApplicationController
    before_action :set_space, only: [:show, :destroy, :edit, :update]
    def index
        
    end

    def edit
        @week_days={ "monday"=>1,"tuesday"=>2,"wednesday"=>3 , "thursday"=>4  , "friday"=>5,"saturday"=>6, "sunday"=>7}

        @user_detail=User.find(session[:user_id])
        @space=Space.find(params[:id])
    end

    def new
        @user_detail=User.find(session[:user_id])
        @space=Space.new
    end

    def update
        
        @space_details=User.find(session[:user_id]).spaces
        @space_detail=@space_details.find(params[:id])
      
        if @space_detail.update(space_details_params)
          redirect_to edit_space_path     
        else
          redirect_to edit_space_path  
        end
    end

    def create
        @space=Space.new(space_details_params)
        @space.size=params[:space][:size]
        @space.dimensions=params[:space][:dimensions]
        @space.floor_number=params[:space][:floor_number]
        @space.number_of_toilets=params[:space][:number_of_toilets]
        @space.nearby_landmark=params[:space][:nearby_landmark]
        @space.user_id=session[:user_id]
        if @space.save 
            @space_address=SpaceAddress.new
            @space_address.house_number=params[:space][:space_address][:house_number]
            @space_address.street=params[:space][:space_address][:street]
            @space_address.city=params[:space][:space_address][:city]
            @space_address.pincode=params[:space][:space_address][:pincode]
            @space_address.state=params[:space][:space_address][:state]
            @space_address.latitude=params[:space][:space_address][:latitude]
            @space_address.longitude=params[:space][:space_address][:longitude]
            @space_address.space_id=@space.id
            
            @week_days={ "monday"=>1,"tuesday"=>2,"wednesday"=>3 , "thursday"=>4  , "friday"=>5,"saturday"=>6, "sunday"=>7}
        
            @space_available_day=SpaceAvailableDay.new
            
            @week_days.each do |key,value|
                @space_availability_timing=SpaceAvailabilityTiming.new
                @space_available_day[key]=params[:space][:space_available_day][key]
                @space_available_day[:space_id]=@space.id
                @space_availability_timing[:start_time]=params[:space][:start_time][key]
                @space_availability_timing[:end_time]=params[:space][:end_time][key]
                @space_availability_timing[:space_id]=@space.id
                @space_availability_timing.day_id=value
                @space_availability_timing.save
            end
        
           
            @space_address.save 
        
            @space_available_day.save
        
            redirect_to '/spaces/new'
        else
            redirect_to '/spaces/new'
        end
        
    end

    def destroy
        @space.space_address.destroy
        
        @space.space_availability_timings.each do|t|
            t.destroy
        end
        @space.space_available_day.destroy
        @space.booking_records.each do|b|
            b.destroy
        end
        if @space.destroy
            redirect_to '/user_details/'+@user_detail.id.to_s+'/edit'
        else
            redirect_to '/user_details/'+@user_detail.id.to_s+'/edit' 
        end

    end

    private

   

    def space_details_params
        params.require(:space).permit(:space_address,:size,:dimensions,:floor_number,:number_of_toilets,:nearby_landmark, images: [])
    end

    def user_details_params
        params.require(:user_details).permit(:first_name, :last_name, :education_details, :about_user, :city, :college, :phone_number, :mobile_number, :user_id)
    end

    def set_space
        @user=User.find(session[:user_id])
        @user_detail=@user.user_detail
        @space=Space.find(params[:id])
        @space_address=@space.space_address
    end

end
