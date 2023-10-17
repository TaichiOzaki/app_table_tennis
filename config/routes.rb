Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'posts#index', as: 'index_post'
  get '/topics/index', to: 'topics#index', as: 'index_topic'

    # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  get 'posts/edit/:id', to: 'posts#edit', as: 'edit_post'
  post 'posts/edit/:id', to: 'posts#update', as: 'update_post'
  delete 'posts/destroy/:id', to: 'posts#destroy', as: 'destroy_post'
  patch 'posts/remove/:id', to: 'posts#remove', as: 'remove_post'
  



  
  # CommentsController
  get 'posts/show/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
  post 'posts/show/:post_id/comments/new', to: 'comments#create', as: 'create_comment'
  
    # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  post 'topics/new', to: 'topics#create', as: 'create_topic'
  get 'topics/edit/:id', to: 'topics#edit', as: 'edit_topic'
  post 'topics/edit/:id', to: 'topics#update', as: 'update_topic'
  delete 'topics/destroy/:id', to: 'topics#destroy', as: 'destroy_topic'
   
  # TabletennisController
  get 'tabletennis/index', to: 'tabletennis#index', as: 'tabletennis_index'
  post 'tabletennis/index', to: 'tabletennis#create', as: 'tabletennis_create'


  # TimeController
  get 'time/index', to: 'time#index', as: 'time_index'
  post 'time/index', to: 'time#create', as: 'time_create'
  delete 'time/index', to: 'time#destroy', as: 'time_destroy'
  



  resources :posts do
    collection do
      patch 'add', to: 'posts#add', as: 'add'
      
    end
  end

end


