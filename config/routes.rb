Rails.application.routes.draw do
  get 'owner_dashboard', to: "ownerdashboard#upcoming_booking"
  post 'view_details', to: "ownerdashboard#view_details"
  get 'dashboard', to: 'member_dashboard#dashboard'
  get 'profile',to: 'member_dashboard#profile'
  get 'member_dashboard/new'
  get 'member_dashboard/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  resources:user_details
  resources:space_addresses
  
   

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'
 
  # get '/search', to: 'userbooking#search'

  root to:'user#log_in'
       
  #root to:'user#l 
  get '/searching', to: 'searchings#index'
  
  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'

  get 'membershipindex', to: 'membership#membershipindex'
  get 'membership', to: 'membership#membership'



  get '/new', to:'user#new' 
end
  