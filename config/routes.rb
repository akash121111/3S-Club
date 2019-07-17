Rails.application.routes.draw do
  get 'sign_up',to: "ownersignups#sign_up",as: 'owner_signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  resources :users do
    member do
      get :confirm_email
    end
  end
   
  post 'owner_signup' ,to: 'ownersignups#create' 
  get '/login',to: 'ownersignups#login',as: 'login_in_owner'
  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'

end
mount RailsEmailPreview::Engine, at: '/emails'
 comfy_route :cms_admin, :path => '/admin'