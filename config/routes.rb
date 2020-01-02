# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
end
