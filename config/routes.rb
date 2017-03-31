Rails.application.routes.draw do



  resources :logistics_service_locations
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

  get :showallproducers, to: "admin_view#showallproducers"
  get :showallproducttypes, to: "admin_view#showallproducttypes"
  get :showallproducts, to: "admin_view#showallproducts"
  get :showallpackages, to: "admin_view#showallpackages"


  get :showalllogistics, to: "admin_view#showalllogistics"
  get :showalltransports, to: "admin_view#sshowalltransports"
  get :showalllogisticservices, to: "admin_view#showalllogisticservices"
  get :showallwarehouses, to: "admin_view#showallwarehouses"
  get :showallshipments, to: "admin_view#showallshipments"













  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
