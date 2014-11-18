Rails.application.routes.draw do
  root 'welcome#index'
  get 'json'=>'welcome#json',:defaults => { :format => 'json' }
  get 'runtime'=>'welcome#runtime',:defaults => { :format => 'json' }
  get 'upload'=>'welcome#upload'
  post 'post_upload'=>'welcome#post_upload',:defaults => { :format => 'json' }
  get 'file'=>'welcome#file',:defaults => { :format => 'json' }
  get 'ac'=>'welcome#ac',:defaults => { :format => 'json' }
  get 'redirect'=>'welcome#redirect',:defaults => { :format => 'json' }
  get 'cookie'=>'welcome#cookie',:defaults => { :format => 'json' }
  get 'response_format'=>'welcome#response_format',:defaults => { :format => 'xml' }
  


  resources :articles

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
