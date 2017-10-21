Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  
  get 'tags/:tag', to: 'posts#index', as: :tag
  
  root to: "posts#index"
  
  
end
