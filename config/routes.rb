Rails.application.routes.draw do
  get 'owner/index'
  get 'signup', to: 'owner#signup'
  get 'owner/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
