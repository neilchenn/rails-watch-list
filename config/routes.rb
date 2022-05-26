Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new create show]
  resources :movies, only: %i[index new create show]
  resources :bookmarks, only: %i[index new create show edit update destroy]
end
