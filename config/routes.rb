Rails.application.routes.draw do


  resources :trips
  resources :comments
  resources :attractions
namespace :api do
  namespace :v1 do
    resources :locations
    resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  end
end



end
