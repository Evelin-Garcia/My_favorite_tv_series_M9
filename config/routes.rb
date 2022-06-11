Rails.application.routes.draw do
  get 'actors/new'
  get 'actors/create'
  devise_for :users
  root 'tv_shows#index'
  resources :tv_shows do
    resources :episodes
    resources :actors, only: [:new, :create]
  end
end
