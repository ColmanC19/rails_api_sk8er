Rails.application.routes.draw do
  resources :skaters do
    resources :boards
  end
end
