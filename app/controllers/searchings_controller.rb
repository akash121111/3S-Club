class SearchingsController < ApplicationController
    def index

      if params.has_key?(:date) 
        @a=DateTime.parse(params[:date]).to_date.strftime('%A')
      else 
        date = DateTime.now
      end

 
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
