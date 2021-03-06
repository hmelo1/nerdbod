Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'static_pages#home'
  resources :plans  do
    resources :workouts
    resources :comments, only: [:new, :create]
  end

  get "dumbbells", to: "static_pages#dumbbells"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
