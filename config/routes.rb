Rails.application.routes.draw do
  devise_for :users
  resources :questions
  resources :pages
  root 'pages#index'
end
