Rails.application.routes.draw do
  # devise_for :users
  # devise_for :installs
  get 'homes/index'
  
  root 'likelion#home'
  get 'likelion' => 'likelion#home'
  get 'likelion/about'
  get 'about' => 'likelion#about'
  get 'likelion/ideathon'
  get 'ideathon'=> 'likelion#ideathon'
  get 'likelion/debugging'
  get 'debugging' => 'likelion#debugging'
  get 'likelion/recinfo'
  get 'recinfo' => 'likelion#recinfo'
  get 'likelion/writeidea'
  get 'writeidea' => 'likelion#writeidea'
  post 'doWriteIdea' => 'likelion#doWriteIdea'
  get 'likelion/viewidea'
  get 'viewidea' => 'likelion#viewidea'
  post 'like'=>'likelion#like'
  get 'like' => 'likielion#like'
  get 'likelion/like'
  post 'commentidea' => 'likelion#commentidea'
  get 'writequestion' => 'likelion#writequestion'
  post 'doWriteQuestion' => 'likelion#doWriteQuestion'
  get 'likelion/viewquestion'
  get 'viewquestion' => 'likelion#viewquestion'
  post 'commentquestion' => 'likelion#commentquestion'
  post 'sendemail' => 'likelion#sendemail'
  
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
