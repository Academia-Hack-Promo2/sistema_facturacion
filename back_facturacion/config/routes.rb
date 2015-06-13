Rails.application.routes.draw do

  #Products
  resources :products
  get 'products/index'
  get 'products/show'
  get 'products/create'
  get 'products/update'
  get 'products/destroy'
  get 'products' => 'products#show_all'
  get 'products/:id' => 'products#show_one'
  post 'products' => 'products#create_one'
  put 'products/:id' => 'products#update_one'
  delete 'products/:id' => 'products#delete_one'

    get 'invoices/active' => 'invoices#active'
    get 'invoices/inactive' => 'invoices#inactive'
    get 'invoices/sale' => 'invoices#sale'
    get 'invoices/shopping' => 'invoices#shopping'
  resources :invoices
    
  resources :associateds
    get 'associateds/show/all' => 'associateds#all'
    get 'customers' => 'associateds#customers'
    get 'providers' => 'associateds#providers'
    get 'all_customers' => 'associateds#all_customers'
    get 'sponsors' => 'associateds#sponsors'
    get 'all_sponsors' => 'associateds#all_sponsors'
    #muestra todos los asociados activos o inactivos
  devise_for :users
  get 'users' => 'users#index'


  
  
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
end
