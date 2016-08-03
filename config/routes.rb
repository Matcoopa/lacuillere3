Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get "top" => "restaurants#top"
    end
    member do
      get "chef" => "restaurants#chef"
    end
  end



end
