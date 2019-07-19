Rails.application.routes.draw do
  get 'owner_dashboard', to: "ownerdashboard#upcoming_booking"
  post 'view_details', to: "ownerdashboard#view_details"
  get 'dashboard', to: 'member_dashboard#dashboard'
<<<<<<< HEAD
  get 'profile',to: 'member_dashboard#profile'
  get 'member_dashboard/new'
  get 'member_dashboard/show'
=======
  post 'dashboard', to: 'member_dashboard#update'
  post 'memberdetail', to: 'member_dashboard#create'
  get 'profile',to: 'member_dashboard#profile'
  get 'booking',to: 'member_dashboard#bookingdetail'
  
 
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  resources:user_details
  resources:space_addresses
<<<<<<< HEAD
  resources:space_available_days
  resources:user_addresses
=======
  
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
   

 
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
<<<<<<< HEAD
  
  post '/owner_signup' ,to: 'ownersignups#create'

  get 'signup',to:'ownersignups#sign_up'
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to:'user#log_in'
  post '/owner_signup' ,to: 'ownersignups#create'
  get '/login',to: 'ownersignups#login'

>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
  #get 'user/index'
  #get 'user/sign_up'
  #get 'user/log_in'
get '/searching', to: 'searchings#index'
  # get '/search', to: 'userbooking#search'

<<<<<<< HEAD

 
  get 'membershipindex', to: 'membership#membershipindex'
  get 'membership', to: 'membership#membership'

  get '/new', to:'user#new' 
 
	resources:user
  resources:password_resets
  root to:'user#index'
  delete 'log_out' , to:'user#destroy'
=======
  get 'membershipindex', to: 'membership#membershipindex'
  get 'membership', to: 'membership#membership'



  get '/new', to:'user#new' 
 	#resources:sessions
	resources:user
  root to:'user#index'
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
  get 'sign_up_user', to:'user#sign_up'
  get 'login_user', to:'user#login'
  get 'dashboard' , to:'sessions#index'
  post 'login_confirm',to: 'sessions#create'
<<<<<<< HEAD
=======
  #post 'session/create', to:'session#create'
  #delete 'session/destroy'
  #get 'user/index'
  #get 'user/sign_up', to:'user#sign_up'
  #get 'user/log_in'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
end
  