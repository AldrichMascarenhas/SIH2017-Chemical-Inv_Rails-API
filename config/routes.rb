Rails.application.routes.draw do



  mount_devise_token_auth_for 'User', at: 'user_auth'


   shallow do
    resources :producers do
      resources :product_types do
        resources :products do
          resources :packages
        end
      end
    end

   end



    resources :warehouses

    shallow do
      resources :logistics do
        resources :transports
        resources :logistics_services

      end

    end


  resources :shipments do
    post 'addtologisticservice'
  end





  mount_devise_token_auth_for 'Admin', at: 'admin_auth'
  as :admin do
    # Define routes for Admin within this block.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
