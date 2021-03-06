Rails.application.routes.draw do
  root "task_lists#index"
  get "/signin" => "sessions#new", as: :signin
  get "/signout" => "sessions#destroy", as: :signout
  post "/signin" => "sessions#create"

  resources :task_lists do
    resources :tasks
    resources :completed_tasks, :only => [:create, :index]
  end

  resources :users do
    resources :tasks
  end

  resource :about, :only => :show
  resource :search, :only => :show
end
