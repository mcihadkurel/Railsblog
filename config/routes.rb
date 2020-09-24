Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'articles/new'
  root 'articles#new'
end
