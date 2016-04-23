Rails.application.routes.draw do
  
  devise_for :users
  root 'users#home'
  resources :users
  get 'teams'=> 'users#index'
  get 'dues' => 'users#dues'
  get 'trophies' => 'users#trophies'
  get 'champions' => 'users#champions'
  get 'sacko' => 'users#sacko'
  
  resources :charges

end
