Rails.application.routes.draw do
  root "posts#index"
  resources :users
  resources :subscribers
  devise_for :admins
  resources :posts do
    resources :comments
    resources :schedule_values
  end
end
