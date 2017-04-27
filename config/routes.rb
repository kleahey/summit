Rails.application.routes.draw do
  get 'roomschedules', to: "roomschedules#index"
  resources :sessions
  resources :roles
  resources :locations
  resources :teammembers do
    resources :schedules
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
