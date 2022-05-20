Rails.application.routes.draw do
  # get 'lists', to: 'lists#index', as: 'lists'
  # get 'lists/new', to: 'lists#new', as: 'new_list'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists', to: 'lists#create'
  resources :lists, only: %i[index new show create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
