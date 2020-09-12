Rails.application.routes.draw do
  devise_for :users
  resources :jobtitles
  resources :magazines
  resources :oenologists
  resources :winestrains
  resources :strains
  resources :wines

  root "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
