Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end

  root to: "posts#index"
end
