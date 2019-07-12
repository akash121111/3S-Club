Rails.application.routes.draw do
  get 'owner_dashboard', to: "ownerdashboard#upcoming_booking"
  post 'view_details', to: "ownerdashboard#view_details"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  resources:user_details
  resources:space_addresses
  
   

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'
  get '/searching', to: 'searchings#index'
  # get '/search', to: 'userbooking#search'

end
