Rails.application.routes.draw do

  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
  git resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
