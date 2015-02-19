Rails.application.routes.draw do
  # Routes for the Favorite resource:
  # CREATE
  get '/favorites/new',      :controller => 'favorites', :action => 'new',    :as => 'new_favorite'
  post '/favorites',         :controller => 'favorites', :action => 'create', :as => 'favorites'

  # READ
  get '/favorites',          :controller => 'favorites', :action => 'index'
  get '/favorites/:id',      :controller => 'favorites', :action => 'show',   :as => 'favorite'

  # UPDATE
  get '/favorites/:id/edit', :controller => 'favorites', :action => 'edit',   :as => 'edit_favorite'
  patch '/favorites/:id',    :controller => 'favorites', :action => 'update'

  # DELETE
  delete '/favorites/:id',   :controller => 'favorites', :action => 'destroy'
  #------------------------------

  # Routes for the Farm resource:
  # CREATE
  get '/farms/new',      :controller => 'farms', :action => 'new',    :as => 'new_farm'
  post '/farms',         :controller => 'farms', :action => 'create', :as => 'farms'

  # READ
  get '/farms',          :controller => 'farms', :action => 'index'
  get '/farms/:id',      :controller => 'farms', :action => 'show',   :as => 'farm'

  # UPDATE
  get '/farms/:id/edit', :controller => 'farms', :action => 'edit',   :as => 'edit_farm'
  patch '/farms/:id',    :controller => 'farms', :action => 'update'

  # DELETE
  delete '/farms/:id',   :controller => 'farms', :action => 'destroy'
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get '/dishes/new',      :controller => 'dishes', :action => 'new',    :as => 'new_dish'
  post '/dishes',         :controller => 'dishes', :action => 'create', :as => 'dishes'

  # READ
  get '/dishes',          :controller => 'dishes', :action => 'index'
  get '/dishes/:id',      :controller => 'dishes', :action => 'show',   :as => 'dish'

  # UPDATE
  get '/dishes/:id/edit', :controller => 'dishes', :action => 'edit',   :as => 'edit_dish'
  patch '/dishes/:id',    :controller => 'dishes', :action => 'update'

  # DELETE
  delete '/dishes/:id',   :controller => 'dishes', :action => 'destroy'
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get '/restaurants/new',      :controller => 'restaurants', :action => 'new',    :as => 'new_restaurant'
  post '/restaurants',         :controller => 'restaurants', :action => 'create', :as => 'restaurants'

  # READ
  get '/restaurants',          :controller => 'restaurants', :action => 'index'
  get '/restaurants/:id',      :controller => 'restaurants', :action => 'show',   :as => 'restaurant'

  # UPDATE
  get '/restaurants/:id/edit', :controller => 'restaurants', :action => 'edit',   :as => 'edit_restaurant'
  patch '/restaurants/:id',    :controller => 'restaurants', :action => 'update'

  # DELETE
  delete '/restaurants/:id',   :controller => 'restaurants', :action => 'destroy'
  #------------------------------

  # Routes for the Consumer resource:
  # CREATE
  get '/consumers/new',      :controller => 'consumers', :action => 'new',    :as => 'new_consumer'
  post '/consumers',         :controller => 'consumers', :action => 'create', :as => 'consumers'

  # READ
  get '/consumers',          :controller => 'consumers', :action => 'index'
  get '/consumers/:id',      :controller => 'consumers', :action => 'show',   :as => 'consumer'

  # UPDATE
  get '/consumers/:id/edit', :controller => 'consumers', :action => 'edit',   :as => 'edit_consumer'
  patch '/consumers/:id',    :controller => 'consumers', :action => 'update'

  # DELETE
  delete '/consumers/:id',   :controller => 'consumers', :action => 'destroy'
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
