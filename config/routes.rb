Rails.application.routes.draw do
  devise_for :users
  root to: 'questions#index'

  post "bookmarks/:question_id/create" => "bookmarks#create"
  post "bookmarks/:question_id/destroy" => "bookmarks#destroy"

  resources :profiles, only: [:new, :create, :show, :edit, :update]

  resources :papas, only: [:index]

  resources :questions do
    resources :comments, only: [:create, :destroy]
    resources :bookmarks, only: [:index, :create, :destroy]
  end
end
