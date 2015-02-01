Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  resources :admin, only: [:index]

  namespace :admin do
    resources :reviews, only: [:index, :destroy]
    resources :chats, only: [:index, :destroy]
  end

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
    resources :paths, :path =>
    '/', :path_names => {
      :red => "",
      :green => "",
      :cyan => "",
      :white => "",
      :purple => "",
      :orange => "",
      :darkred => "",
      :pink => "",
      :yellow => "",
      :blue => "",
      :win => ""}, only: [:create, :new, :destroy] do
      collection do
        get 'red', :path => "/#{SecureRandom.hex(3)}"
        get 'green', :path => "/#{SecureRandom.hex(3)}"
        get 'cyan', :path => "/#{SecureRandom.hex(3)}"
        get 'white', :path => "/#{SecureRandom.hex(3)}"
        get 'purple', :path => "/#{SecureRandom.hex(3)}"
        get 'orange', :path => "/#{SecureRandom.hex(3)}"
        get 'darkred', :path => "/#{SecureRandom.hex(3)}"
        get 'pink', :path => "/#{SecureRandom.hex(3)}"
        get 'yellow', :path => "/#{SecureRandom.hex(3)}"
        get 'blue', :path => "/#{SecureRandom.hex(3)}"
        get 'win', :path => "/#{SecureRandom.hex(3)}"
      end
    end
  end

  resources :highscores, only: [:index, :create, :new]
  resources :reviews, only: [:index, :create, :new]
  resources :chats, only: [:index, :create, :new]


  # match '/red'
  # match '/green' => "shortener/shortened_urls#show"
  # match '/cyan' => "shortener/shortened_urls#show"
  # match '/white' => "shortener/shortened_urls#show"
  # match '/purple' => "shortener/shortened_urls#show"
  # match '/orange' => "shortener/shortened_urls#show"
  # match '/darkred' => "shortener/shortened_urls#show"
  # match '/pink' => "shortener/shortened_urls#show"
  # match '/yellow' => "shortener/shortened_urls#show"
  # match '/blue' => "shortener/shortened_urls#show"
  # match '/win' => "shortener/shortened_urls#show"
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
