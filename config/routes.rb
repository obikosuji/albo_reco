Rails.application.routes.draw do
  # Routes for the Musician resource:
  # CREATE
  get "/musicians/new", :controller => "musicians", :action => "new"
  post "/create_musician", :controller => "musicians", :action => "create"

  # READ
  get "/musicians", :controller => "musicians", :action => "index"
  get "/musicians/:id", :controller => "musicians", :action => "show"

  # UPDATE
  get "/musicians/:id/edit", :controller => "musicians", :action => "edit"
  post "/update_musician/:id", :controller => "musicians", :action => "update"

  # DELETE
  get "/delete_musician/:id", :controller => "musicians", :action => "destroy"
  #------------------------------

  # Routes for the Album resource:
  # CREATE
  get "/albums/new", :controller => "albums", :action => "new"
  post "/create_album", :controller => "albums", :action => "create"

  # READ
  get "/albums", :controller => "albums", :action => "index"
  get "/albums/:id", :controller => "albums", :action => "show"

  # UPDATE
  get "/albums/:id/edit", :controller => "albums", :action => "edit"
  post "/update_album/:id", :controller => "albums", :action => "update"

  # DELETE
  get "/delete_album/:id", :controller => "albums", :action => "destroy"
  #------------------------------

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
