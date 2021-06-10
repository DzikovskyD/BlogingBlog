Rails.application.routes.draw do
  resources :users
  resources :subscribers
  devise_for :admins
  resources :posts do
    resources :comments
  # resources: subscribers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
