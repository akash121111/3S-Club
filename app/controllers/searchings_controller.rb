class SearchingsController < ApplicationController
    def index

@start_time=params['start_time']
@end_time=params['end_time']



      if params.has_key?(:date) 
  @a=DateTime.parse(params[:date]).to_date.strftime('%A')
else 
  date = DateTime.now
end

finddayid ={ "Monday" => "1", "Tuesday" => "2", "Wednesday" => "3" , "Thursday" => "4", "Friday" => "5", "Saturday" => "6", "Sunday" => "7"}

@k=finddayid[@a].to_i


    @space_addresses = SpaceAddress.search(params[:search])
    @findsearchaddresspid=@space_addresses.pluck(:space_id)
    @findsearchdatepid=SpaceAvailableDay.searchday(@a)
    @findcommonsearch= @findsearchaddresspid & @findsearchdatepid
  
   @aftersearchbydayandaddress=SpaceAddress.find(@findcommonsearch)


# x = @aftersearchbydayandaddress.pluck(:space_id).length
# i=0

# while i < x
#   @p=@aftersearchbydayandaddress.pluck(:space_id)[i]
#   @l=SpaceAvailabilityTiming.se(@p,@k)
#   i=i+1
# end

   
    @hash = Gmaps4rails.build_markers(@aftersearchbydayandaddress) do |r, marker|
      marker.lat r.latitude
      marker.lng r.longitude
      marker.infowindow r.city
    end
    end

    def allmap
      @space_addresses = SpaceAddress.all

 @hash = Gmaps4rails.build_markers( @space_addresses) do |r, marker|
      marker.lat r.latitude
      marker.lng r.longitude
      marker.infowindow r.city
    end
  end



  def booking
    
    @space_id=params['space_id']
    @user_id=params['user_id']
    @booking_time=params['booking_time']
    @start_time=params['start_time']
    @end_time=params['end_time']
   
     @booking_record = BookingRecord.new(booking_params)
    if  @booking_record.save
      byebug

        @check_Condition=MemberSubscription.find_by("space_id = ? and user_id=?",@space_id,@user_id)
        

      @change_remain_time_wallet=@check_Condition.try(:time_wallet)
      @new_remain_time_wallet=@change_remain_time_wallet-@booking_time.to_f
      @check_Condition.time_wallet=@new_remain_time_wallet
   
      if(@check_Condition.save)
         flash[:success] ="Booking was Sucessfully"
      end

     
     
    

       
     
        
    else
        redirect_to 'searching_path' 
    end
  

  end


    private

    def article_params
      params.require(:space_addresses).permit(:search, :date,:start_time,:end_time)
      end
      def booking_params
      params.permit(:space_id, :user_id,:start_time,:end_time)
      end
end



