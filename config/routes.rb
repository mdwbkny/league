Rails.application.routes.draw do

  root 'users#home'
  resources :users
  get 'teams'=> 'users#index'
  get 'dues' => 'users#dues'
  get 'trophies' => 'users#trophies'
  get 'shiva' => 'users#shiva'
  get 'sacko' => 'users#sacko'
  
  resources :charges

end
