Rails.application.routes.draw do
  devise_for :voters

  root 'welcome#index'
  resources :elections
  resources :races
  resources :motivators do
    post :opine
  end
end
