Rails.application.routes.draw do
  get 'dynamic_pages/gossip'
  get 'dynamic_pages/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get 'gossip/:id', to: 'dynamic_pages#gossip'
  get 'welcome/:welcome', to: 'dynamic_pages#welcome'
  get 'user/:id', to: 'dynamic_pages#user'
end