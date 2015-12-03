Rails.application.routes.draw do
  devise_for :voters

  root 'welcome#index'
  resources :elections do
    resources :offices
  end
  resources :motivators do
    post :opine
  end
end
