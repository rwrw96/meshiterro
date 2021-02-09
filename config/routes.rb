Rails.application.routes.draw do
devise_for :users
resources :post_images, only: [:new, :create, :index, :show, :destroy]
root to: "homes#top"
end
