Rails.application.routes.draw do
  resources :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'home#index'
 get 'profil', to: 'profil#index'
end
