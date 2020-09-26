Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :articles
 
  root 'welcome#index'
  #This route directing url
end
