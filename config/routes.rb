Rails.application.routes.draw do
  get 'index', to: "ownerdashboard#index"
  get 'ownerdashboard/new'
  get 'ownerdashboard/show'
  get 'ownerdashboard/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  
   

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'

end
