class SearchingsController < ApplicationController
    def index

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


    private

    def article_params
      params.require(:space_addresses).permit(:search, :date)
      end
end
