Rails.application.routes.draw do
  resources :comments
  resources :users
	resources :articles
  #get 'welcome/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
end
