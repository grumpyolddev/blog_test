Rails.application.routes.draw do

  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  #Blog Routes
  resources :articles do
    resources :comments  
  end
  #root 'welcome#index'
end
