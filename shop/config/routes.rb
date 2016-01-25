Rails.application.routes.draw do
  get 'cart/index'

  get 'order/show'

  get 'order/new'

  get 'order/add'

  get 'order/create'

  get 'order/remove'

  get 'product/_form'

  get 'product/create'

  get 'product/delete'

  get 'product/edit'

  get 'product/index'

  get 'product/new'

  get 'product/show'

  get 'product/update'

  get 'category/edit'

  get 'category/index'

  get 'category/new'

  get 'category/show'

  devise_for :buyers

  
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
  root "product#index"
  get "/products" => "product#index"
  get "/categories/:id/products" => "category#index"
  get "/products/:id" => "product#show"
  post "/products/:id/buy" => "order#add"
  get "/checkout" => "order#show"
  post "/products/:id/remove" => "order#remove"
  post "/checkout/pay" => "order#order_paid"
  get "/checkout/success" => "order#success"
end
