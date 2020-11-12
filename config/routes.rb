Rails.application.routes.draw do
  devise_for :users
  root to: 'questions#index'

  post "bookmarks/:question_id/create" => "bookmarks#create"
  post "bookmarks/:question_id/destroy" => "bookmarks#destroy"

  resources :profiles, except: [:index, :destroy]

  resources :papas, except: [:index] do
    resources :papa_events, only: [:show]
  end

  resources :questions do
    resources :comments, only: [:create, :destroy]
    resources :bookmarks, only: [:index, :create, :destroy]
  end
end
