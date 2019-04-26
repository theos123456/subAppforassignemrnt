Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'
  get 'homes/show_asigs'
  get 'homes/show'
  resources :submits
  resources :searches
  devise_for :users, controllers: {
    sessions: 'users/sessions'}
  resources :assignments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
