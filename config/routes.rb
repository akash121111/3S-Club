Rails.application.routes.draw do
  get 'owner_dashboard', to: "ownerdashboard#upcoming_booking"
  get 'ownerdashboard/new'
  post 'view_details', to: "ownerdashboard#view_details"
  get 'ownerdashboard/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  
   

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'

end
