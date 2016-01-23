Facebook::Application.routes.draw do

  get "profile/edit"

  get "profile/save"

  get "users/edit"

  get "users/show"

  get "users/add_friend"

  

  get "comments/index"

  get "comments/show"

  get "comments/new"

  get "like/create"

  get "posts/index"

  get "posts/profile"

  get "posts/create"

  #devise_for :posts

  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

  get "/posts" => "posts#index"
  get "/profile" => "posts#profile"
  post "/posts/create" => "posts#create"
  get "/posts/like" => "like#create"
  get "/posts/unlike" => "like#destroy"
  get "/posts/delete" => "posts#delete"
  post "/posts/add_comment" => "posts#add_comment"
  get "/users/:id" => "users#show"

  get "profile/edit" => "profile#edit"
  post "profile/save" => "profile#save"

  get "/users/:id/like" => "like#create"
  post "/users/:id/add_comment" => "users#add_comment"
  post "/users/:id/add_friend" => "users#add_friend"

end

