ADC::Application.routes.draw do

  resources :orders

  resources :brands

  match 'token/gettoken' => 'token#gettoken'
  
  match 'api/years' => 'api#getyears'
  
  match 'api/makes/:id' => 'api#getmakesbyyear'
  match 'api/makes' => 'api#getmakesbyyear'
  
  match 'api/cars/:id' => 'api#getcarsbymake'
  match 'api/cars' => 'api#getcarsbymake'
  
  match 'api/cars/:makeid/:yearid' => 'api#getcarsbymakeandyear'
  match 'api/carsByMakeAndYear' => 'api#getcarsbymakeandyear'
  
  match 'api/categories/:id' => 'api#getcategoriesbycar'
  match 'api/categories' => 'api#getcategoriesbycar'
  
  match 'api/mfg/:carid/:catid' => 'api#getmfgbycarandcat'
  match 'api/mfgByCarAndCat' => 'api#getmfgbycarandcat'
  
  match 'api/products/:carid/:catid' => 'api#getproductsbycarcatmfg'
  match 'api/getproductsbycarcat' => 'api#getproductsbycarcat'
  
  match 'api/' => 'api#index'

  resources :subcategories

  resources :manufacturers

  devise_for :users, :controllers => {:sessions => 'sessions'}
  
  resources :users

  resources :years

  resources :cars_products

  resources :products

  resources :categories

  resources :cars

  resources :makes
  
  resources :product_images





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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

