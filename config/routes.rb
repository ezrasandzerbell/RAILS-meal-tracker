Rails.application.routes.draw do
  devise_for :users
  resources :pages, :only => [:index, :show]
  root to: "pages#index"
  resources :users, :only => [:show, :update] do
    resources :workouts
  end
  resources :users, :only => [] do
    resources :meals
  end
end
