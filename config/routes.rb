Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:edit,:index,:update]
  root "homes#top"
  resources :books, only: [:create,:index,:show,:edit,:destroy,:update]
  get "/home/about" => "homes#about" , as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
