Rails.application.routes.draw do



  mount_devise_token_auth_for 'User', at: 'user_auth'


   shallow do
    resources :producers do
      resources :producer_locations
      resources :product_types do
        resources :products do
          resources :packages
        end
      end
    end

   end


  shallow do
    resources :warehouses do
      resources :warehouse_locations

    end



  end

    shallow do
      resources :logistics do
        resources :transports
        resources :logistics_services do
          resources :logistics_service_locations

        end

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

  get :getcountofallproducers, to: "admin_view#getcountofallproducers"
  get :getcountofallproducttypes, to: "admin_view#getcountofallproducttypes"
  get :getcountofallproducts, to: "admin_view#getcountofallproducts"
  get :getcountofallpackages, to: "admin_view#getcountofallpackages"
  get :getcountofalllogistics, to: "admin_view#getcountofalllogistics"
  get :getcountofalltransports, to: "admin_view#sgetcountofalltransports"
  get :getcountofalllogisticservices, to: "admin_view#getcountofalllogisticservices"
  get :getcountofallwarehouses, to: "admin_view#getcountofallwarehouses"
  get :getcountofallshipments, to: "admin_view#getcountofallshipments"


  post :search, to: "cas_data_search#search"









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
