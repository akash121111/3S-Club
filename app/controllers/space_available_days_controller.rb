class SpaceAvailableDaysController < ApplicationController
    def show

    end
    def update
        
        @space_available_day=SpaceAvailableDay.find(params[:id])
      
        if @space_available_day.update(space_available_day_params) 
            @space_id=@space_available_day.space_id
            @space_availability_timings=SpaceAvailabilityTiming.where(space_id: @space_id)
            i=0
                @space_availability_timings.order(day_id: :asc).each do|st|
                    
                    st.update(start_time: params[:space_available_day][:space_availability_timing][:start_time][i])
                    st.update(end_time: params[:space_available_day][:space_availability_timing][:end_time][i])
                    i+=1
                end
               
          redirect_to '/spaces/'+ @space_available_day.space_id.to_s+'/edit'   
        else
          redirect_to edit_space_path  
        end
    end

    private

    def space_available_day_params
        params[:space_available_day].require(:space_available_day).permit(:monday,:tuesday,:wednesday,:thursday,:friday,:saturday)
    end

    def space_availability_timing_params
        params[:space_available_day].require(:space_availability_timing).permit(start_time:[],end_time:[])
    end
end
