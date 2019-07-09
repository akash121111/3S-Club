class OwnerdashboardController < ApplicationController
  def index
    @br=BookingRecord.new
    @space=Space.find_by(@br.space_id)
    @image=SpaceImage.find_by(@br.space_id)
    @time=SpaceAvailabilityTiming.find_by(@br.user_id)
    @day=SpaceAvailableDay.find_by(@br.space_id)
  end

  def new
  end

  def show
  end

  def destroy
  end
end
