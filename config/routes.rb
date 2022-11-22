Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #create routes for index, show and create
  resources :plants, only: [:index, :show, :create]
end
