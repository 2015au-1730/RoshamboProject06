Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  get 'tool_kit' => 'tool_kit#index'
  root 'pages#home'
end
