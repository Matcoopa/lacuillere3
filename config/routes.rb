Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get "top" => "restaurants#top"
    end
    member do
      get "chef" => "restaurants#chef"
    end
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end


end
