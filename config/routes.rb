Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :stories
  resources :dashboard
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
