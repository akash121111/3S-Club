class SearchingsController < ApplicationController
    def index

@start_time=params['start_time']
@end_time=params['end_time']
@b=DateTime.parse(@start_time).to_time.strftime('%T')
@c=DateTime.parse(@end_time).to_time.strftime('%T')


      if params.has_key?(:booking_date) 
  @a=DateTime.parse(params[:booking_date]).to_date.strftime('%A').downcase
else 
  date = DateTime.now
end

finddayid ={ "monday" => "1", "tuesday" => "2", "wednesday" => "3" , "thursday" => "4", "friday" => "5", "saturday" => "6", "sunday" => "7"}

@k=finddayid[@a].to_i


    @space_addresses = SpaceAddress.search(params[:search].downcase)
    @findsearchaddresspid=@space_addresses.pluck(:space_id)
    @findsearchdatepid=SpaceAvailableDay.searchday(@a)

    @l=SpaceAvailabilityTiming.se(@k,@b,@c)
    @findcommonsearch= @findsearchaddresspid & @findsearchdatepid & @l
  
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
     @booking_date=params['booking_date']
   
     @booking_record = BookingRecord.new(booking_params)
    if  @booking_record.save

        @check_Condition=MemberSubscription.find_by("space_id = ? and user_id=?",@space_id,@user_id)
        

      @change_remain_time_wallet=@check_Condition.try(:time_wallet)
      @new_remain_time_wallet=@change_remain_time_wallet-@booking_time.to_f
      @check_Condition.time_wallet=@new_remain_time_wallet
   
      @check_Condition.save
     
     
    

        flash[:success] ="Booking was Sucessfully"
     
        
    else
        redirect_to 'searching_path' 
    end
  

  end


    private

    def article_params
      params.require(:space_addresses).permit(:search, :booking_date,:start_time,:end_time)
      end
      def booking_params
      params.permit(:space_id, :user_id,:booking_time,:booking_date,:start_time,:end_time)
      end
end



