Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users, path_names: { new: "user_new", edit: "user_edit" }

  # resources :users, path: "insan" # /user/new, /user

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

  # resource :photo
  # resource :photo, controller: 'images'

  # namespace :admin do
  #   root 'admin#index'
  # end

  # scope :admin do
  #   root 'admin#index'
  # end

  # resources :users, constraints: { id: /\d+/ }

  # scope path_names: { new: 'make', edit: 'change' } do
  #   resources :users
  # end

  # scope 'admin' do
  #   resources :photos
  # end

  # scope 'admin', as: 'admin' do
  #   resources :photos
  # end

  # scope 'admin', as: 'admin', path_names: { new: 'make' } do
  #   resources :photos
  # end

  # resources :photos, :accounts

  # resources :users, module: 'test'
  # scope 'admin' do
  #   resources :users, path: :images
  # end

  # resources :users, path: 'images'

  # resource :tooth # add irregular to inflections.rb

  resources :tests
end
