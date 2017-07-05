Rails.application.routes.draw do
  root "pages#app"
  get '/app' => 'pages#app'

  get '/search' => 'pages#search'



  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)
  resources :flights
  resources :airplanes
  resources :users
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
