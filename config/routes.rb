LinkDumpz::Application.routes.draw do
  root :to => 'posts#index'
  resources :posts do
    resources :comments, except: [:new]
  end
  resources :votes, only: [:create]
  resources :comments
end
