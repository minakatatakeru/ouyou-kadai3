Rails.application.routes.draw do
  get 'messages/create'
  get 'rooms/create'
  get 'rooms/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' =>'relationships#follows', as: 'followings'
    get 'followers' =>'relationships#followers', as: 'followers'
   end
   
   get "search" => "searches#search"
   get "search_result" => "searches#search_result"
  
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show]
end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

