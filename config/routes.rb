Rails.application.routes.draw do
  resources :places
  resources :brands
  resources :lines
  resources :products 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#inicio'

  get 'pages/quienes'

  get 'pages/contactenos'

end
