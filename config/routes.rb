Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :artists
  resources :album_pubs
  resources :album_invs


  root to: "home#index"
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/users',    to: 'users#show'
  get    '/album_invs', to: 'album_invs#show'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
