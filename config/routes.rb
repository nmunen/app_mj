Rails.application.routes.draw do
  namespace :api do
    resources :players, only: [:index,:show,:update,:destroy]
    resources :matches, param: :match_id, only: [:index,:show] 
    resources :matches, only: [] do 
      resources :calculate_match,only: [:create]
      resources :hanchans,only: [:create]
      #resources :hanchan_results, param: :hanchan_id, only: [:index,:show]
      resources :tips,only: [:create]
      #resources :tip_results,only: [:index,:show]
    end
  end
end
