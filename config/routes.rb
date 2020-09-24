Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  #new
  root 'welcome#index'
end
