Rails.application.routes.draw do

  resources :reservations
  root to: "users#new"

  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)
  resources :flights
  resources :airplanes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
