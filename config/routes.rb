# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root 'articles#index', as: 'home'
  
  get 'about' => 'welcome#about'

  resources :articles do
    resources :comments
  end
end
