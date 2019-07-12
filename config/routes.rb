Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
