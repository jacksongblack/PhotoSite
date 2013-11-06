PhotographyStudio::Application.routes.draw do
  resources :announcements
  resources :albums
  resources :images
  get "sessions/new"
  get "sessions/create"

  controller :Users do
    get "admin_edit" => :edit
    post "admin_edit" => :update
    get "admin_show" => :show
    put "admin_edit" => :update
  end
  controller :images do
    get "del_image" => :destroy
  end
 controller :Sessions do
   post "/sessions/new" => :create
   get "login" => :new
   post "login" => :create
   get "logout" => :destroy
 end

  controller :Home do
   get "/home" => :home_page

  end
  controller :FlashHome do
    get "flash" =>:flash_home
    get "/music" => :music
    get "/error" => :error
  end
  controller :albums do
    get "delete_album" => :destroy
  end
  controller :PortfolioTwo do
    get "/home" => :home_page
    get "/show" => :show
  end
  controller :announcements do
    get "delete_message" => :destroy
  end
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
  root :to => 'flash_home#flash_home',:as=>"flash"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  match "*a" => "flash_home#error"
end
