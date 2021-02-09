Rails.application.routes.draw do
devise_for :users
resources :post_images, only: [:new, :create, :index, :show, :destroy]
root to: "homes#top"
resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

end
