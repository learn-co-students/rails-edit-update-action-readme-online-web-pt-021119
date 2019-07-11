Rails.application.routes.draw do
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  resources :articles, only: [:index, :show, :new, :create, :edit, :update] 
  #same thing as the line 1 and 2

end
