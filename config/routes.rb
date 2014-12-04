Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome, only: [:index]
  resources :categories, only: [:show]
end
