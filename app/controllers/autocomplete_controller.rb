class AutocompleteController < ApplicationController
    def index
    @city = SpaceAddress.order(:city).where("city like ?", "%#{params[:term]}%")
    render json: @city.map(&:city)
  end
end
