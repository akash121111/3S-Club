class OwnerdashboardController < ApplicationController
  def upcoming_booking
    @br=BookingRecord.last
    @space=Space.find_by(id:@br.space_id)
    @image=SpaceImage.find_by(id:@br.space_id)
    @time=SpaceAvailabilityTiming.find_by(id:@br.space_id)
    @day=SpaceAvailableDay.find_by(id:@br.space_id)
    
  end
  def view_details
    @br=BookingRecord.find_by(params[:id])
    @space=Space.find_by(id:@br.space_id)
    @image=SpaceImage.find_by(id:@br.space_id)
    @time=SpaceAvailabilityTiming.find_by(id:@br.space_id)
    @day=SpaceAvailableDay.find_by(id:@br.space_id)
    @member=User.find_by(id:@br.user_id)
    @member_details=@member.user_detail
  end
end
