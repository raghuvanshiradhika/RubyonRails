Rails.application.routes.draw do
  resources :articles
  root 'pages#rails home'
  get 'about', to:'pages#about'
  resources :categories
end
