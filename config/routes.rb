Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
<<<<<<< Updated upstream
end
=======
  resources :users, only: [:show]
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create]
  end
end
>>>>>>> Stashed changes
