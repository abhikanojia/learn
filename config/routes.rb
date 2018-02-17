Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users, path_names: { new: "user_new", edit: "user_edit" }

  # resources :users, path: "user" # /user/new, /user

  # resources :users, only: [:new, :index]

  # resources :users, except: [:new, :index]

  # resources :users, shallow: true do
  #   resources :comments
  # end

  # resources :users, shallow: true

  # scope shallow_path: "sekret" do
  #   resources :users, shallow: true
  # end

  # scope shallow_path: "sekret" do
  #   resources :users, shallow: true do
  #     resources :comments
  #   end
  # end

  # resources :users, format: false

  get "index" => "test#index"
  get "in" => "static#test_name", as: "in"

  # resources :posts do
  #   resources :comments, except: [:show, :edit, :update, :destroy]
  # end
  # resources :comments, only: [:show, :edit, :update, :destroy]

  # concern :commentable do
  #   resources :users
  # end

  resources :users
end
