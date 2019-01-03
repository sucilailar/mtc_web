Rails.application.routes.draw do
  resources :pj_dojangs
  resources :pengurus
  resources :geups
  resources :kas_clubs
  resources :kas_smps
  resources :kas_smas
  resources :data_kejuaraans
  resources :surats
  resources :absensis
  resources :data_ukts
  resources :kategori_pembayarans
  resources :pembayarans
  resources :kas
  resources :data
  resources :kegiatans
  resources :kejuaraans
  resources :statuses
  resources :roles
  resources :dojangs
  resources :comments
  resources :akuns
  resources :ukts
  resources :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'profil', to: 'profil#index'
  get 'sort_geup', to: 'ukts#sort_geup' 
  get 'login' => 'session#new'
  post 'login' => 'session#create'
  get 'logout' => 'session#destroy'
end
