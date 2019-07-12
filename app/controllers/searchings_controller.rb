class SearchingsController < ApplicationController
    def index

      if params.has_key?(:date) 
<<<<<<< HEAD
        @a=DateTime.parse(params[:date]).to_date.strftime('%A')
      else 
        date = DateTime.now
      end
=======
  @a=DateTime.parse(params[:date]).to_date.strftime('%A')
else 
  date = DateTime.now
end
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59

 
    @space_addresses = SpaceAddress.search(params[:search])
    @findsearchaddresspid=@space_addresses.pluck(:space_id)
    @findsearchdatepid=SpaceAvailableDay.searchday(@a)
    @findcommonsearch= @findsearchaddresspid & @findsearchdatepid
    @aftersearchbydayandaddress=SpaceAddress.find(@findcommonsearch)
    @hash = Gmaps4rails.build_markers(@aftersearchbydayandaddress) do |r, marker|
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
