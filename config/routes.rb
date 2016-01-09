Rails.application.routes.draw do
  devise_for :users
  resources :posts
  
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/stream'
  root 'welcome#index'
end
