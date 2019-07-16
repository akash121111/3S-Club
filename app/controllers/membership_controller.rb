class MembershipController < ApplicationController
  
    def membership
      @member1 = MembershipPlan.find_by id: 11 
      @short = @member1.time_alloted
      @member2 = MembershipPlan.find_by id: 10 
      @long = @member2.time_alloted
      
      if @short==params[:p].to_f
        @customer = MemberSubscription.find_by id: 1
        @newEntry = MemberSubscription.new 
        @newEntry.membership_plan_id = 11
        @newEntry.user_id = @customer.user_id
        @newEntry.space_id = @customer.space_id
        @newEntry.time_wallet = @customer.time_wallet + 50.0
        @newEntry.save
      elsif @long==params[:p].to_f
        @customer = MemberSubscription.find_by id: 1
        @newEntry = MemberSubscription.new 
        @newEntry.membership_plan_id = 10
        @newEntry.user_id = @customer.user_id
        @newEntry.space_id = @customer.space_id
        @newEntry.time_wallet = @customer.time_wallet + 150.0
        @newEntry.save
      end
      redirect_to request.referer
    end
    def membershipindex
    end
end
