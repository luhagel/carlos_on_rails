Rails.application.routes.draw do
  devise_for :users

  resources :subreddits, only: [:index, :show, :new, :create] do
    resources :posts, only: [:new, :create, :show] do
      resources :comments, only: [:create]
    end
  end

  root to: "subreddits#index"
end
