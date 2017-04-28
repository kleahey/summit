Rails.application.routes.draw do
  get 'roomschedules', to: "roomschedules#index"
  get 'roomschedules/:session_id/list', as: "roomschedules_list", to: "roomschedules#list"

  resources :sessions
  resources :roles
  resources :locations
  resources :teammembers do
    resources :schedules
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
