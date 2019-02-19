Rails.application.routes.draw do
<<<<<<< HEAD
  resources :users
=======
  resources :user_interests
  resources :interests
  resources :user_code_schools
  resources :code_schools
  mount_devise_token_auth_for 'User', at: 'auth'
>>>>>>> ff735738ccacbafe5537d0c07afeb71deb2b7e80
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
