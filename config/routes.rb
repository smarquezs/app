Rails.application.routes.draw do
  root 'welcome#index'

  resources :article_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
