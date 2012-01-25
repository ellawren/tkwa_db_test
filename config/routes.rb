TkwaDb::Application.routes.draw do

  resources :consultants

  resources :reimbursables

  get "services/new"

  get "services/edit"

  get "services/index"

  get "services/show"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  resources :projects

  resources :services

  resources :employees

  resources :projects do
    member do
      get 'info', 'team', 'scope'
    end
  end

  match '/signup',      :to => 'users#new'
  match '/signin',      :to => 'sessions#new'
  match '/signout',     :to => 'sessions#destroy'

  #matches path with action in the pages_controller - here, pages -> projects
  match '/projects',    :to => 'projects#index'
  match '/team',        :to => 'projects#team'

  match '/contacts',    :to => 'pages#contacts'
  match '/patterns',    :to => 'pages#patterns'
  match '/timesheets',  :to => 'pages#timesheets'

  match '/newproject',  :to => 'projects#new'
  # match '/editproject', :to => 'projects#edit'
  # match '/showproject', :to => 'projects#show'

  match '/employees',   :to => 'employees#index'
  # match '/newemployee', :to => 'employees#new'
  # match '/editemployee', :to => 'employees#edit'
  # match '/showemployee', :to => 'employees#show'

  root :to => 'pages#home'

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



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
