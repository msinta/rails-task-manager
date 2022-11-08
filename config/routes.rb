Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # READALL
  get '/tasks', to: 'tasks#index', as: :tasks

  # CREATE
  get '/tasks/new', to: 'tasks#new',  as: :new
  post '/tasks', to: 'tasks#create'

  # READONE
  get '/tasks/:id', to: 'tasks#view', as: :task

  # UDPDATE/EDIT
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit

  # PATCH
  patch '/tasks/:id', to: 'tasks#update'

  #DESTROY
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete

end
