Rails.application.routes.draw do

  get 'roomschedules', to: "roomschedules#index"
  get 'roomschedules/:session_id/list', as:"roomschedules_list", to: "roomschedules#list"

  get 'consultations', as: "consultations", to: "schedules#consultations"

  get 'admin', to: "admin#index"
  get 'admin/teammembers', to: "admin/teammembers#index"
  get 'admin/teammembers/:teammember_id/schedules', as: "admin_teammember_schedules", to: "admin/schedules#index"
  post 'admin/teammembers/:teammember_id/schedules', to: "admin/schedules#create"
  get 'admin/teammembers/:teammember_id/schedules/new', as: "admin_new_teammember_schedule", to: "admin/schedules#new"
  get 'admin/teammembers/:teammember_id/schedules/:id/edit', as: "admin_edit_teammember_schedule", to: "admin/schedules#edit"
  get 'admin/teammembers/:teammember_id/schedules/:id', as: "admin_teammember_schedule", to: "admin/schedules#show"
  patch 'admin/teammembers/:teammember_id/schedules/:id', to: "admin/schedules#update"
  put 'admin/teammembers/:teammember_id/schedules/:id', to: "admin/schedules#update"
  delete 'admin/teammembers/:teammember_id/schedules/:id', to: "admin/schedules#destroy"

  scope '/admin' do
    resources :sessions, :locations, :roles
  end

  resources :teammembers do
    resources :schedules
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
