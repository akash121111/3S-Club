class MembershipController < ApplicationController
  byebug
    def membership
      member1 = MembershipPlan.find_by id: 11 
      short = member1.time_alloted
      member2 = MembershipPlan.find_by id: 10 
      long = member2.time_alloted
      if short==params[:p]
        customer = MemberSubscription.find_by id: 1
        newEntry = MemberSubscription.new 
        newEntry.membership_plan_id = params[:p]
        newEntry.user_id = customer.user_id
        newEntry.space_id = customer.space_id
        newEntry.time_wallet =0.0
        newEntry.save
      elsif long==params[:p]
        customer = MemberSubscription.find_by id: 1
        newEntry = MemberSubscription.new 
        newEntry.membership_plan_id = params[:p]
        newEntry.user_id = customer.user_id
        newEntry.space_id = customer.space_id
        newEntry.time_wallet = 0.0
        newEntry.save
      end
      redirect_to request.referer
    end
    def membershipindex
    end
end
