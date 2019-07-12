Rails.application.routes.draw do
  get 'dashboard', to: 'member_dashboard#dashboard'
  get 'profile',to: 'member_dashboard#profile'
  get 'member_dashboard/new'
  get 'member_dashboard/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
 
  root to:'user#log_in' 
  #ils on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resouces:spacesr
       
 #root to:'user#l 
  get '/searching', to: 'searching#index'
  
  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'


end
  