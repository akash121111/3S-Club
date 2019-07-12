Rails.application.routes.draw do
  get 'sign_up',to: "ownersignups#sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
  

  root to:'user#log_in'


  resources:users
  
   
  post '/owner_signup' ,to: 'ownersignups#create'
  get '/login',to: 'ownersignups#login'

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'
get '/searching', to: 'searchings#index'
  # get '/search', to: 'userbooking#search'

  get 'membershipindex', to: 'membership#membershipindex'
  get 'membership', to: 'membership#membership'
  resources:spaces
 
	#resources:sessions
	resources:user
  

  get 'sign_up', to:'user#sign_up'
  get 'login', to:'user#login'


  get 'dashboard' , to:'sessions#index'
  post 'login_confirm',to: 'sessions#create'
  #post 'session/create', to:'session#create'
  #delete 'session/destroy'
  #get 'user/index'
  #get 'user/sign_up', to:'user#sign_up'
  #get 'user/log_in'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
