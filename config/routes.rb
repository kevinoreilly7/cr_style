CrStyleSearch::Application.routes.draw do

  root :to => 'pictures#index'

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/sessions' => 'sessions#destroy', as: 'session'


  # Routes for the Profile resource:
  # CREATE
  get '/profiles/new', controller: 'profiles', action: 'new', as: 'new_profile'
  post '/profiles', controller: 'profiles', action: 'create'

  # READ
  get '/profiles', controller: 'profiles', action: 'index', as: 'profiles'
  get '/profiles/:id', controller: 'profiles', action: 'show', as: 'profile'

  # UPDATE
  get '/profiles/:id/edit', controller: 'profiles', action: 'edit', as: 'edit_profile'
  put '/profiles/:id', controller: 'profiles', action: 'update'

  # DELETE
  delete '/profiles/:id', controller: 'profiles', action: 'destroy'
  #------------------------------

  # Routes for the Professional resource:
  # CREATE
  get '/professionals/new', controller: 'professionals', action: 'new', as: 'new_professional'
  post '/professionals', controller: 'professionals', action: 'create'

  # READ
  get '/professionals', controller: 'professionals', action: 'index', as: 'professionals'
  get '/professionals/:id', controller: 'professionals', action: 'show', as: 'professional'

  # UPDATE
  get '/professionals/:id/edit', controller: 'professionals', action: 'edit', as: 'edit_professional'
  put '/professionals/:id', controller: 'professionals', action: 'update'

  # DELETE
  delete '/professionals/:id', controller: 'professionals', action: 'destroy'
  #------------------------------

  # Routes for the Requirement resource:
  # CREATE
  get '/requirements/new', controller: 'requirements', action: 'new', as: 'new_requirement'
  post '/requirements', controller: 'requirements', action: 'create'

  # READ
  get '/requirements', controller: 'requirements', action: 'index', as: 'requirements'
  get '/requirements/:id', controller: 'requirements', action: 'show', as: 'requirement'

  # UPDATE
  get '/requirements/:id/edit', controller: 'requirements', action: 'edit', as: 'edit_requirement'
  put '/requirements/:id', controller: 'requirements', action: 'update'

  # DELETE
  delete '/requirements/:id', controller: 'requirements', action: 'destroy'
  #------------------------------

  # Routes for the Picture resource:
  # CREATE
  get '/pictures/new', controller: 'pictures', action: 'new', as: 'new_picture'
  post '/pictures', controller: 'pictures', action: 'create'

  # READ
  get '/pictures', controller: 'pictures', action: 'index', as: 'pictures'
  get '/pictures/:id', controller: 'pictures', action: 'show', as: 'picture'

  # UPDATE
  get '/pictures/:id/edit', controller: 'pictures', action: 'edit', as: 'edit_picture'
  put '/pictures/:id', controller: 'pictures', action: 'update'

  # DELETE
  delete '/pictures/:id', controller: 'pictures', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
end
