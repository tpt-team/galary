Rails.application.routes.draw do
  resources 'author'
  resources 'exhibition'
  resources 'genre'
  resources 'order'
  resources 'personell'
  resources 'custom'
  resources 'picture'

  get 'welcome/index'
  root to: 'welcome#index'
end
