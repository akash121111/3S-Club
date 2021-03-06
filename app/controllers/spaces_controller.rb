class SpacesController < ApplicationController
    before_action :is_owner?
    before_action :set_space, only: [:show, :destroy, :edit, :update]
    before_action :set_week_days, only: [:edit,:create,:new, :update]
    def index
        @spaces=Space.where(user_id: session[:user_id])
        @user=User.find(session[:user_id])
        @user_detail=@user.user_detail
    end

    def edit
        @user=User.find(session[:user_id])
        @space=Space.find(params[:id])
        @space_available_day=@space.space_available_day
    end

    def new
        @user=User.find(session[:user_id])
        @space=Space.new
        @user_detail=@user.user_detail
    end

    def update    
        @space_details=User.find(session[:user_id]).spaces
        @space_detail=@space_details.find(params[:id])
        if @space_detail.update(space_details_params)
          flash[:success]="Space Details Updated"
          redirect_to edit_space_path  
        else
          flash[:danger]=@space_address.errors.first[1]
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
        
           
            if @space_address.save 
                @space_available_day.save
                flash[:success] ="Space created Successfully!!!"
            
                redirect_to spaces_path
            else
                flash[:danger]=@space_address.errors.first[1]
                redirect_to '/spaces/new'
            end        
            
        else
            flash[:danger]=@space.errors.first[1]
            redirect_to '/spaces/new'
        end
        
    end

    def destroy
       
        @space.update(deleted_at: Time.now)
        if @space.deleted_at
            flash[:success]="Space Deleted Successfully"
            redirect_to spaces_path
        else
            flash[:danger]="Space Not Deleted"
            redirect_to '/user_details/'+@user_detail.id.to_s+'/edit' 
        end

    end

    private

   

    def space_details_params
        params.require(:space).permit(:space_name,:size,:dimensions,:floor_number,:number_of_toilets,:nearby_landmark, images: [])
    end

    def set_space
        @user=User.find(session[:user_id])
        @user_detail=@user.user_detail
        @space=Space.find(params[:id])
        @space_address=@space.space_address
    end

    def set_week_days
        @week_days={ "monday"=>1,"tuesday"=>2,"wednesday"=>3 , "thursday"=>4  , "friday"=>5,"saturday"=>6, "sunday"=>7}
    end

end
