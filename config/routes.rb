Rails.application.routes.draw do
  get 'roomschedules', to: "roomschedules#index"
  get 'roomschedules/:session_id/list', as: "roomschedules_list", to: "roomschedules#list"

  get 'admin', to: "admin#index"
  get 'admin/teammembers', to: "teammembers#index"
  get 'admin/teammembers/:teammember_id/schedules', to: "schedules#index"

  scope '/admin' do
    resources :sessions, :locations, :roles
  end

  resources :teammembers do
    resources :schedules
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
