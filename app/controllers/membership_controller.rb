class MembershipController < ApplicationController

  
   def create_short_plan(member1)
     @newEntry = MemberSubscription.new
     @newEntry.membership_plan_id = 1
     @newEntry.user_id = params[:user_id]
     @newEntry.time_wallet = 50.0
     byebug
     @newEntry.save
     #SubscriptionMailMailer.message_to(@newEntry,@member1,params(session[:user_id])).deliver_now
   end

   def create_long_plan(member2)
     @newEntry = MemberSubscription.new
     @newEntry.membership_plan_id = 2
     @newEntry.user_id = params[:user_id]
     @newEntry.time_wallet = 150.0
     @newEntry.save
     #SubscriptionMailMailer.message_to(@newEntry,@member2,params(session[:user_id])).deliver_now
   end

   def membership
     @member1 = MembershipPlan.find_by id: 1
     member1 = @member1
     @short = @member1.time_alloted
     @member2 = MembershipPlan.find_by id: 2
     member2 = @member2
     @long = @member2.time_alloted

     if MemberSubscription.find_by(user_id: params[:user_id]).nil? #if the use is new and have no plan yet
       if @short==params[:p].to_f
         create_short_plan(member1) # calling short plan
       elsif @long==params[:p].to_f
         create_long_plan(member2) #calling long plan
       end
     elsif MemberSubscription.find_by( user_id: params[:user_id]) #if user is not new 
       if @short==params[:p].to_f
         @customer = MemberSubscription.find_by(user_id: params[:user_id])
         @customer.membership_plan_id = 1
         @customer.time_wallet = @customer.time_wallet + 50.0
         @customer.save
         #SubscriptionMailMailer.message_to(@customer,@member1,params(session[:user_id])).deliver_now
       elsif @long==params[:p].to_f
         @customer = MemberSubscription.find_by(user_id: params[:user_id])
         @customer.membership_plan_id = 2
         @customer.time_wallet = @customer.time_wallet + 150.0
         @customer.save
        # SubscriptionMailMailer.message_to(@customer,@member2,params(session[:user_id])).deliver_now
       end
     end
     redirect_to request.referer
   end
   def membershipindex
     @user_id = params[:user_id]
   end
end