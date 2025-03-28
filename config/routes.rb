Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'homes#top'
  root to: "homes#top"

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]

  get "/homes/about" => "homes#about", as: "about"

end
