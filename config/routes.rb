Rails.application.routes.draw do
  devise_for :users
  resources :votes do
  	collection {post :import}
  end
  
  get 'votes/index'
  root 'pages#home'
  get 'pages/about'
  get 'pages/service'
  get 'pages/faq'
  get 'pages/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
