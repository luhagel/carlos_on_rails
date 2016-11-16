Rails.application.routes.draw do
  get 'subreddits/index'

  resources :subreddits, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create, :show] do
      resources :comments, only: [:create]
    end
  end

  root to: "subreddits#index"
end
