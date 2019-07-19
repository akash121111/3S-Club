Rails.application.routes.draw do
  get 'owner_dashboard', to: "ownerdashboard#upcoming_booking"
  post 'view_details', to: "ownerdashboard#view_details"
  get 'dashboard', to: 'member_dashboard#dashboard'
  post 'dashboard', to: 'member_dashboard#update'
  post 'memberdetail', to: 'member_dashboard#create'
  get 'profile',to: 'member_dashboard#profile'
  get 'booking',to: 'member_dashboard#bookingdetail'
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  resources:user_details
  resources:space_addresses
  resources:space_available_days
  resources:user_addresses
   

 
  # get '/search', to: 'userbooking#search'

  root to:'user#log_in'
       
  #root to:'user#l 
  get '/searching', to: 'searchings#index'
  get '/allmap', to:'searchings#allmap'
  get '/booking', to:'searchings#booking'
  
  post 'owner_signup' ,to: 'ownersignups#create' 
  get '/login',to: 'ownersignups#login',as: 'login_in_owner'
  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'
  get 'sign_up',to: "ownersignups#sign_up"
  
  post '/owner_signup' ,to: 'ownersignups#create'

  get 'signup',to:'ownersignups#sign_up'
  #get 'user/index'
  #get 'user/sign_up'
  #get 'user/log_in'
get '/searching', to: 'searchings#index'
  # get '/search', to: 'userbooking#search'


 
  get 'membershipindex', to: 'membership#membershipindex'
  get 'membership', to: 'membership#membership'

  get '/new', to:'user#new' 
 
	resources:user
  resources:password_resets
  root to:'user#index'
  delete 'log_out' , to:'user#destroy'
  get 'sign_up_user', to:'user#sign_up'
  get 'login_user', to:'user#login'
  get 'dashboard' , to:'sessions#index'
  post 'login_confirm',to: 'sessions#create'
end
  