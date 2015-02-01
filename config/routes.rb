Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'games#index'

  resources :credits, only: [:index]

  resources :games, only: [:create, :index, :new, :destroy] do
    collection do
      get 'highscores'
      get 'credits'
      get 'chatroom'
      post 'easy'
      post 'hard'
    end
    resources :paths, :path => '/', only: [:create, :new, :destroy] do
      collection do
        get 'red', :path => '/'
        get 'green', :path => '/'
        get 'cyan', :path => '/'
        get 'white', :path => '/'
        get 'purple', :path => '/'
        get 'orange', :path => '/'
        get 'darkred', :path => '/'
        get 'pink', :path => '/'
        get 'yellow', :path => '/'
        get 'blue', :path => '/'
        get 'win', :path => '/'
      end
    end
  end

  resources :highscores, only: [:index, :create, :new]
  resources :reviews, only: [:index, :create, :new]
  resources :chats, only: [:index, :create, :new]


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
