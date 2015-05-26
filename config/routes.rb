Rails.application.routes.draw do
  root 'static_pages#home'
  get 'sessions/new'
  get 'users/new'
  get 'signup' => 'users#new'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'

resources :users

end
