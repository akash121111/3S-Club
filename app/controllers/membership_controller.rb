class MembershipController < ApplicationController

   def payment
   end
   def show
     @membership_plan =MembershipPlan.find(params[:id])
     @price = @membership_plan.price.to_f / 100
    end
   def create
    
     @newEntry = MemberSubscription.find_by(user_id:session[:user_id])
     @membership_plan=MembershipPlan.find(@newEntry.membership_plan_id)
     if @newEntry.update(stripe_token:order_params)
        Stripe.api_key = Rails.application.secrets.stripe_secret_key # set the secret key to identify with stripe.
        Stripe::Charge.create(
          :amount => @membership_plan.price,
          :currency => "gbp",
          :card => @newEntry.stripe_token # obtained with Stripe.js
        )
        flash[:success] = "Thanks for Subscribing  #{@membership_plan.name}"
        redirect_to show_path(@membership_plan, @newEntry)
      else

        flash[:error] = "Oops, something went wrong"
        render :new
      end
      rescue Stripe::CardError => e
        body = e.json_body
        err  = body[:error]
        flash[:error] = err[:message]
        render :new
   end

   def create_short_plan(member1)
     @newEntry = MemberSubscription.new
     @newEntry.membership_plan_id = 1
     @newEntry.user_id = session[:user_id]
     @newEntry.time_wallet = 50.0
     @newEntry.save
     @membership_plan=MembershipPlan.find(@newEntry.membership_plan_id)
     @order=MemberSubscription.find_by(user_id:session[:user_id])
     redirect_to payment_path(@membership_plan, @order)
     #SubscriptionMailMailer.message_to(@newEntry,@member1,params(session[:user_id])).deliver_now
   end

   def create_long_plan(member2)
     @newEntry = MemberSubscription.new
     @newEntry.membership_plan_id = 2
     @newEntry.user_id = session[:user_id]
     @newEntry.time_wallet = 150.0
     @newEntry.save
     @membership_plan=MembershipPlan.find(@newEntry.membership_plan_id)
     @order=MemberSubscription.find_by(user_id:session[:user_id])
     redirect_to payment_path(@membership_plan, @order)
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
    
   end
   def membershipindex
     @user_id = params[:user_id]
   end
   private
   def order_params
     params.permit(:stripe_token)
   end

end