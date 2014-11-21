Rails.application.routes.draw do
  resources :users
  get "album"=>'album#index'
  get "get_image"=>'album#get_image',:defaults => { :format => 'json' }

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
  get 'req'=>'welcome#req',:defaults => { :format => 'xml' }



  #用get方式请求 resp路由，路由这么写。
  #via 指定http请求放方式；format指定返回格式（json，html，xml）
  #get 'resp', to: 'welcome#resp',:defaults => { :format => 'xml' }
  #match 'resp', to: 'welcome#response',:defaults => { :format => 'xml' },via: [:get]
  #get 'resp'=>'welcome#resp',format: 'json'
  #get 'resp'=>'welcome#resp',format: 'xml'
  get 'resp'=>'welcome#resp'
  
  #post 'resp', to: 'welcome#resp',:defaults => { :format => 'xml' }
  get 'download_file'=>'welcome#download_file'
  get 'log'=>'welcome#log'
  get 'rails'=>'welcome#rails'
  get 'cache'=>'welcome#cache'


  #namespace and auth 
  namespace :manage do
    get 'home'=>'home#index',format: 'json'
  end
  

  ##########manage routes
  
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
