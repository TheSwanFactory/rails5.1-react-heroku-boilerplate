Rails.application.routes.draw do
  root 'application#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount Rapidfire::Engine => "/rapidfire"
  get '*path', to: 'application#index'
  get'/', to: 'application#index'
end
