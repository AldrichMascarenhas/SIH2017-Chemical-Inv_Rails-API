Rails.application.routes.draw do
  resources :transports
  resources :shipments
  resources :logistics



  mount_devise_token_auth_for 'User', at: 'user_auth'


   shallow do
    resources :producers do
      resources :product_types do
        resources :products do
          resources :packages
        end
      end
    end


    resources :warehouses


  end



  mount_devise_token_auth_for 'Admin', at: 'admin_auth'
  as :admin do
    # Define routes for Admin within this block.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
