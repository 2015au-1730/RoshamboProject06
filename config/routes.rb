Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  get 'tool_kit' => 'tool_kit#index'
  get 'list' => 'pages#index'
  get 'forum'=>'posts#index'
  get 'dashboard' => 'dashboard#index'
  get 'list/:id' => 'pages#show', as: :item
  root 'pages#home'
end
