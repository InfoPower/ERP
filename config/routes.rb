Infotree::Application.routes.draw do
  resources :unit_of_measure_conversions do
    collection do
      post 'edit_individual'
      put 'update_individual'
    end
  end 

  match '/sforms/GMC002' => 'unit_of_measure_conversions#index'

  resources :unit_of_measures do
    collection do
      post 'edit_individual'
      put 'update_individual'
    end
  end 


  match '/sforms/GMC001' => 'unit_of_measures#index'

  get "welcome/index"

  get "sforms/MNT001"

  get "sforms/MNT002"

  get "sforms/BOM001"

  get "sforms/ACR001"

  get "sforms/APR001"

  get "sforms/CRM001"

  get "sforms/MNT"

  get "sforms/BOM"

  get "sforms/ACR"

  get "sforms/APR"

  get "sforms/ABC400"

  get "sforms/ACR400"

  get "sforms/APA400"

  get "sforms/BOM400"

  get "sforms/BOM002"

  get "sforms/CAP400"

  get "sforms/COS400"

  get "sforms/DEC400"

  get "sforms/EMT400"

  get "sforms/FAS400"

  get "sforms/FOR400"

  get "sforms/FGL400"

  get "sforms/MNT400"

  get "sforms/MPS400"

  get "sforms/MRP400"

  get "sforms/OEI400"

  get "sforms/INV400"

  get "sforms/SFW400"

  get "sforms/PUR400"

  get "sforms/REW400"

  get "sforms/GMC400"

  get "sforms/QAS400"

  

  resources :pages

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
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end