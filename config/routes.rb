Rails.application.routes.draw do
  devise_for :voters

  root 'welcome#index'
  resources :elections
  resources :voters
  resources :races do
    resource :intention
  end
  resources :motivators do
    post :opine
  end
end
