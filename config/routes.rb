Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: %i[index new create]
  end
  resources :bookmarks, only: %i[show edit update destroy]
end
