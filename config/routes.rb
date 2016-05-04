Rails.application.routes.draw do
  
  get 'auth0/callback'

  get 'auth0/failure'

  root 'users#home'
  resources :users
  get 'teams'=> 'users#index'
  get 'dues' => 'users#dues'
  get 'trophies' => 'users#trophies'
  get 'shiva' => 'users#shiva'
  get 'sacko' => 'users#sacko'
  
  resources :charges

end
