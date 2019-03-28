Rails.application.routes.draw do
  resources :event_repeats
  resources :event_happenings
  resources :happening_interests
  resources :happenings
  resources :user_events
  resources :events
  resources :user_interests
  resources :interests
  resources :user_code_schools
  resources :code_schools
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
