Rails.application.routes.draw do

  get 'public/index'

  get 'public/show'

  get 'public/add_comment'

  get 'admin/index'

  get 'admin/create'

  get 'admin/edit'

  get 'admin/delete'

  get 'admin/update'

  get 'admin/show'

  get 'admin/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
  root "public#index"
  get "/admin/articles" => "admin#index"
  get "/admin/articles/new" => "admin#new"
  post "/admin/create" => "admin#create"
  get "/articles/:id" => "public#show"
  get "admin/articles/:id" => "admin#show"
  get "/articles" => "public#index"
  get "/admin/articles/admin/delete" => "admin#delete"
  #get "/admin/admin/edit" => "admin#edit"
  #get "/admin/admin/delete" => "admin#delete"
  get "/admin/articles/admin/edit" => "admin#edit"
  post "/admin/update" => "admin#update"
  post "/admin/show/add_comment" => "admin#add_comment"
  post "/public/add_comment" => "public#add_comment"
  post "/articles" => "admin#create"
  post "/articles/filter" => "public#filter"
end
