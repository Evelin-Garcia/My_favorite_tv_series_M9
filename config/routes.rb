Rails.application.routes.draw do
root 'tv_shows#index'
  resources :tv_shows do
    resources :episodes
  end
end
