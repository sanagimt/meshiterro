Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'homes#top'
  root to: "homes#top"
  get 'homes/about' => 'homes#about'
  get 'about' => 'homes#about'
end
