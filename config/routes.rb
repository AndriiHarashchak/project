Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end
  devise_for :users
  # get 'posts#about', as: 'about'
  get 'about', action: :about, controller: 'posts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
