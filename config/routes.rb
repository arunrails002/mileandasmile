Rails.application.routes.draw do
  
  resources :main_sliders
  resources :extras
  resources :mile_services
  resources :boarding_forms
  get 'services' => "services#index"
  get 'trips' => "trips#index"
  resources :contact_us
  resources :blogs
  # get 'others/index'
  get 'others' => "others#index"

  resources :packages
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
