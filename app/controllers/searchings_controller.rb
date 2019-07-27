class SearchingsController < ApplicationController
  before_action :is_member?

  def index

       
          if params.has_key?(:booking_date) 
            @DayFind=DateTime.parse(params[:booking_date]).to_date.strftime('%A').downcase
          else 
            date = DateTime.now
          end
       
          @start_time=params['start_time']
          @end_time=params['end_time']
          if @start_time && @end_time
            @StartingTime=DateTime.parse(@start_time).to_time.strftime('%T')
            @EndingTime=DateTime.parse(@end_time).to_time.strftime('%T')
       
          finddayid ={ "monday" => "1", "tuesday" => "2", "wednesday" => "3" , "thursday" => "4", "friday" => "5", "saturday" => "6", "sunday" => "7"}
          
           if (params[:booking_date]+" "+DateTime.parse(@start_time).strftime("%H:%M:%S") < DateTime.now + 480.minutes)
               flash[:success] ="Your registrations is sucessfully completed.Please check registered email"
           
           else  

          @hasesDay=finddayid[@DayFind].to_i
          
          @checkability=BookingRecord.sear(params[:booking_date],@StartingTime,@EndingTime)

          @space_addresses = SpaceAddress.search(params[:search].downcase)
          @findsearchaddresspid=@space_addresses.pluck(:space_id)
          @findsearchdatepid=SpaceAvailableDay.searchday(@DayFind)

          @l=SpaceAvailabilityTiming.se(@hasesDay,@StartingTime,@EndingTime)
          @findcommonsearch= @findsearchaddresspid & @findsearchdatepid & @l

          @findcommonsearch1=(@findcommonsearch - @checkability ) | (@findcommonsearch -@checkability )
          

          #if space is deleted
          @space=Space.all
          @spacenotdelete= @space.where(deleted_at: nil).pluck(:id)
          @afterDeleteCheck=@spacenotdelete && @findcommonsearch1
            

           @aftersearchbydayandaddress=SpaceAddress.where(space_id:@afterDeleteCheck)
           end
          end
   
          @hash = Gmaps4rails.build_markers(@aftersearchbydayandaddress) do |r, marker|
          marker.lat r.latitude
          marker.lng r.longitude
          marker.infowindow r.city
          end
    end
  

    def allmap
      @space_addresses = SpaceAddress.all.pluck(:space_id)
      @space=Space.all
      @spacenotdelete= @space.where(deleted_at: nil).pluck(:id)
      @common=@space_addresses && @spacenotdelete
      @aftersearchnotdeleted=SpaceAddress.where(space_id: @common)



      @hash = Gmaps4rails.build_markers(  @aftersearchnotdeleted) do |r, marker|
        marker.lat r.latitude
        marker.lng r.longitude
        marker.infowindow r.city
       
      end
    end



    def bookingdone
  
                @space_id=params['space_id']
                @user_id=session[:user_id]
                @booking_time=params['booking_time']
                @start_time=params['start_time']
                @end_time=params['end_time']
                @booking_date=params['booking_date']
              
                @booking_record = BookingRecord.new(booking_params)
                        if  @booking_record.save

                            @check_Condition=MemberSubscription.find_by("space_id = ? and user_id=?",@space_id,@user_id)
                    

                            @change_remain_time_wallet=@check_Condition.try(:time_wallet)
                            @new_remain_time_wallet=@change_remain_time_wallet-@booking_time.to_f
                            @check_Condition.time_wallet=@new_remain_time_wallet
                      
                            @check_Condition.save
                
                
                

                        
                
                    
                        else
                          flash[:danger] ="Booking was not Sucessfully"
                            redirect_to 'searching_path' 
                        end
                      

     end
     def user_booking_records
                            # @user=User.find_by(id:session[:user_id])
                            # @user_detail=@user.user_detail
                            # @spaces=@user.spaces
    end


                  private

                  def article_params
                  params.require(:space_addresses).permit(:search, :booking_date,:start_time,:end_time)
                  end
                  def booking_params
                  params.permit(:space_id, :user_id,:booking_time,:booking_date,:start_time,:end_time)
                  end



                
end
  



