Rails.application.routes.draw do
  #HomePage
  root'home#index'

  #Pick up your OS page
  get 'os', to: 'os#index', path: '/pick-your-os'

  #Choose between essential || useful tools
  get 'essentialorusefulmac', to: 'mac#index', path: '/mac'
  get 'essentialorusefulwindows', to: 'windows#index', path: '/windows'
  get 'essentialorusefullinux', to: 'linux#index', path: '/linux'

  #Choose techonoligies
  #Mac
  get 'essentialmac', to: 'mac#essential', path: '/mac/essential-tools'
  get 'usefulmac', to: 'mac#useful', path: '/mac/useful-tools'
  #Windows
  get 'essentialwindows', to: 'windows#essential', path: '/windows/essential-tools'
  get 'usefulwindows', to: 'windows#useful', path: '/windows/useful-tools'
  #Linux
  get 'essentiallinux', to: 'linux#essential', path: '/linux/essential-tools'
  get 'usefullinux', to: 'linux#useful', path: '/linux/useful-tools'

  #Technologies pages
  #Mac
  get 'xcodemac', to: 'mac#xcode', path: '/mac/essential-tools/install/xcode'
  get 'rubyandrvmmac', to: 'mac#ruby_and_rvm', path: '/mac/essential-tools/install/ruby-and-rvm'
  get 'prymac', to: 'mac#pry', path: '/mac/essential-tools/install/pry'
  get 'herokumac', to: 'mac#heroku', path: '/mac/essential-tools/install/heroku'
  get 'homebrewmac', to: 'mac#homebrew', path: '/mac/essential-tools/install/homebrew'
  #Windows
  get 'xcodewindows', to: 'windows#xcode', path: '/windows/essential-tools/install/xcode'
  get 'rubyandrvmwindows', to: 'windows#ruby_and_rvm', path: '/windows/essential-tools/install/ruby-and-rvm'
  get 'prywindows', to: 'windows#pry', path: '/windows/essential-tools/install/pry'
  get 'herokuwindows', to: 'windows#heroku', path: '/windows/essential-tools/install/heroku'
  get 'homebrewwindows', to: 'windows#homebrew', path: '/windows/essential-tools/install/homebrew'
  #Linux
  get 'xcodelinux', to: 'linux#xcode', path: '/linux/essential-tools/install/xcode'
  get 'rubyandrvmlinux', to: 'linux#ruby_and_rvm', path: '/linux/essential-tools/install/ruby-and-rvm'
  get 'prylinux', to: 'linux#pry', path: '/linux/essential-tools/install/pry'
  get 'herokulinux', to: 'linux#heroku', path: '/linux/essential-tools/install/heroku'
  get 'homebrewlinux', to: 'linux#homebrew', path: '/linux/essential-tools/install/homebrew'



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
