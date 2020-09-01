Rails.application.routes.draw do
  get 'welcome/index'

  resources :puzzles

  root 'welcome#index'
end
