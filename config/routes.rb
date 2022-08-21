Rails.application.routes.draw do
  devise_for :users
  
  resources :questions do 
    resources :answers
  end

  resources :pages
  root 'questions#index'
end
