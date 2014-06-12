Atlrug4::Application.routes.draw do

  root :to => "content#index"

  get '/meetings' => 'content#meetings'
  get '/videos' => 'content#videos'
  get '/hire' => 'content#hire'
  get '/learn' => 'content#learn'
  get '/job' => 'content#job'

  resources :talks, :only => [:new, :create] do
    get :approve, :on => :collection
    put :accept, :on => :member
  end

  resources :jobs, :only => [:index, :new, :create] do
    get :view, :on => :member
    get :delete, :on => :member
  end

  resources :resumes, :only => [:index, :new, :create] do
    get :view, :on => :member
    get :delete, :on => :member
  end

  get '/auth/:provider/callback', :to => 'sessions#create'
  get '/login' => redirect('/auth/github'), :as => :login
  get '/log_out' => 'sessions#destroy', :as => :log_out

  #########################
  # Friendly redirects to make it easier to tell people how to get the the YouTube

  # http://atlrug.com/youtube will be redirected to the playlist. Better that bit.ly.
  get '/youtube', to: redirect('https://www.youtube.com/playlist?list=PLqZY2tk6rSRn2Vapk2raOTFjXGiDbpQUU')

  #########################
  # Original Comments

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
