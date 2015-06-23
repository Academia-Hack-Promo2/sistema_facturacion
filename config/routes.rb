Rails.application.routes.draw do
  root 'welcomes#index'
  
  resources :products

  devise_for :users
  resources :users, only: [:index, :show]

  resources :invoices
    #Sales
    get 'sales' => 'invoices#sales'
    get 'sales/draft' => 'invoices#sales_draft'
    get 'sales/legal' => 'invoices#sales_legal'
    get 'sales/cash' => 'invoices#sales_cash'
    get 'sales/credit' => 'invoices#sales_credit'
    post 'sales/sale' => 'invoices#sale'

    #Purchases
    get 'purchases' => 'invoices#purchases'
    get 'purchases/draft' => 'invoices#purchases_draft'
    get 'purchases/legal' => 'invoices#purchases_legal'
    get 'purchases/cash' => 'invoices#purchases_cash'
    get 'purchases/credit' => 'invoices#purchases_credit'    
    
  resources :associateds do
    resources :invoices
  end
    #Customers 
    get 'customers' => 'associateds#customers'
    get 'customers/recurrent' => 'associateds#customers_recurrent'
    get 'customers/punctual' => 'associateds#customers_punctual'
    get 'customers/active' => 'associateds#customers_active'
    get 'customers/inactive' => 'associateds#customers_inactive'
    #Providers
    get 'providers' => 'associateds#providers'
    get 'providers/recurrent' => 'associateds#providers_recurrent'
    get 'providers/punctual' => 'associateds#providers_punctual'
    get 'providers/active' => 'associateds#providers_active'
    get 'providers/inactive' => 'associateds#providers_inactive'
    #Sponsors
    get 'sponsors' => 'associateds#sponsors'
    get 'sponsors/recurrent' => 'associateds#sponsors_recurrent'
    get 'sponsors/punctual' => 'associateds#sponsors_punctual'
    get 'sponsors/active' => 'associateds#sponsors_active'
    get 'sponsors/inactive' => 'associateds#sponsors_inactive'

    


  
  
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
