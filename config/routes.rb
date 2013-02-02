SecretShareApp::Application.routes.draw do
  resources :users
  resources :secrets
  resource :sessions

  root to: "sessions#index"
end
