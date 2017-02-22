Rails.application.routes.draw do
  devise_for :users
  resources :pages, :only => [:index, :show]
  root to: "pages#index"
  resources :users do
    resources :foods
  end
  resources :users do
    resources :exercises
  end
end
