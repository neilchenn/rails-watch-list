Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'bookmarks#index'
  resources :lists, only: %i[index new create show]
  resources :movies, only: %i[index new create show]
  resources :bookmarks, except: [:index]
end
