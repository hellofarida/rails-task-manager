Rails.application.routes.draw do
  resources :tasks
  # Read (read one, read all), create (create and view), update (edit and show), destroy

  # get 'tasks', to: 'tasks#index', as: :tasks
  # post 'tasks', to: 'tasks#create'

  # get 'tasks/new', to: 'tasks#new', as: :new_task

  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # patch 'tasks/:id', to: 'tasks#update', as: :update_task
  # delete 'tasks/:id', to: 'tasks#destroy'
end
