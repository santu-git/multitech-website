Rails.application.routes.draw do
  # get 'public/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'public#index'
  get 'public/search_enrollment', to: 'public#search_enrollment', as: 'search_enrollment'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
