Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  root "hotel_infos#index"

  resources :hotel_infos
end