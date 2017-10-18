#DOCUMENTATION

##################################################################################################################################
##################################################################################################################################

1. ADMIN

 						Prefix Verb   URI Pattern                                            Controller#Action
  
            new_admin_session GET    /admin_auth/sign_in(.:format)                          devise_token_auth/sessions#new
                admin_session POST   /admin_auth/sign_in(.:format)                          devise_token_auth/sessions#create
        destroy_admin_session DELETE /admin_auth/sign_out(.:format)                         devise_token_auth/sessions#destroy
           new_admin_password GET    /admin_auth/password/new(.:format)                     devise_token_auth/passwords#new
          edit_admin_password GET    /admin_auth/password/edit(.:format)                    devise_token_auth/passwords#edit
               admin_password PATCH  /admin_auth/password(.:format)                         devise_token_auth/passwords#update
                              PUT    /admin_auth/password(.:format)                         devise_token_auth/passwords#update
                              POST   /admin_auth/password(.:format)                         devise_token_auth/passwords#create
    cancel_admin_registration GET    /admin_auth/cancel(.:format)                           devise_token_auth/registrations#cancel
       new_admin_registration GET    /admin_auth/sign_up(.:format)                          devise_token_auth/registrations#new
      edit_admin_registration GET    /admin_auth/edit(.:format)                             devise_token_auth/registrations#edit
           admin_registration PATCH  /admin_auth(.:format)                                  devise_token_auth/registrations#update
                              PUT    /admin_auth(.:format)                                  devise_token_auth/registrations#update
                              DELETE /admin_auth(.:format)                                  devise_token_auth/registrations#destroy
                              POST   /admin_auth(.:format)                                  devise_token_auth/registrations#create
    admin_auth_validate_token GET    /admin_auth/validate_token(.:format)                   devise_token_auth/token_validations#validate_token


To Create a New Admin
admin_registration POST   /admin_auth(.:format)                                  devise_token_auth/registrations#create

Model :

{
	"email": "guy@gmail.com",
	"password": "password"
}

Response :

{
  "status": "success",
  "data": {
    "id": 1,
    "email": "admins@gmail.com",
    "provider": "email",
    "uid": "admins@gmail.com",
    "name": null,
    "nickname": null,
    "image": null,
    "created_at": "2017-03-30T12:33:13.044Z",
    "updated_at": "2017-03-30T12:33:13.120Z"
  }
}

TO Sign in a Admin

admin_session POST   /admin_auth/sign_in(.:format)                          devise_token_auth/sessions#create

Model :

{
	"email": "guy@gmail.com",
	"password": "password"
}


Response :

{
  "data": {
    "id": 1,
    "email": "admins@gmail.com",
    "provider": "email",
    "uid": "admins@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  }
}

##################################################################################################################################
##################################################################################################################################
2. USER

 				Prefix Verb   URI Pattern                                            Controller#Action
             new_user_session GET    /user_auth/sign_in(.:format)                           devise_token_auth/sessions#new
                 user_session POST   /user_auth/sign_in(.:format)                           devise_token_auth/sessions#create
         destroy_user_session DELETE /user_auth/sign_out(.:format)                          devise_token_auth/sessions#destroy
            new_user_password GET    /user_auth/password/new(.:format)                      devise_token_auth/passwords#new
           edit_user_password GET    /user_auth/password/edit(.:format)                     devise_token_auth/passwords#edit
                user_password PATCH  /user_auth/password(.:format)                          devise_token_auth/passwords#update
                              PUT    /user_auth/password(.:format)                          devise_token_auth/passwords#update
                              POST   /user_auth/password(.:format)                          devise_token_auth/passwords#create
     cancel_user_registration GET    /user_auth/cancel(.:format)                            devise_token_auth/registrations#cancel
        new_user_registration GET    /user_auth/sign_up(.:format)                           devise_token_auth/registrations#new
       edit_user_registration GET    /user_auth/edit(.:format)                              devise_token_auth/registrations#edit
            user_registration PATCH  /user_auth(.:format)                                   devise_token_auth/registrations#update
                              PUT    /user_auth(.:format)                                   devise_token_auth/registrations#update
                              DELETE /user_auth(.:format)                                   devise_token_auth/registrations#destroy
                              POST   /user_auth(.:format)                                   devise_token_auth/registrations#create
     user_auth_validate_token GET    /user_auth/validate_token(.:format)                    devise_token_auth/token_validations#validate_token



To Create a New User
user_registration POST   /user_auth(.:format)                                   devise_token_auth/registrations#create

Model :

{
	"email": "aaldy@g.com",
	"password": "password"
}



Response :

{
  "status": "success",
  "data": {
    "id": 2,
    "email": "aaldy@g.com",
    "provider": "email",
    "uid": "aaldy@g.com",
    "name": null,
    "nickname": null,
    "image": null,
    "created_at": "2017-03-30T12:36:52.402Z",
    "updated_at": "2017-03-30T12:36:52.476Z"
  }
}

TO Sign in a User

user_session POST   /user_auth/sign_in(.:format)                           devise_token_auth/sessions#create

Model :

{
	"email": "aaldy@g.com",
	"password": "password"
}


Response :

{
  "data": {
    "id": 2,
    "email": "aaldy@g.com",
    "provider": "email",
    "uid": "aaldy@g.com",
    "name": null,
    "nickname": null,
    "image": null,
    "producers": [],
    "logistics": [],
    "warehouses": []
  }
}


USER Relations :

  has_many :producers

  has_many :logistics

  has_many :warehouses

  has_many :shipments


##################################################################################################################################

2. Producers

 				Prefix Verb   URI Pattern                                            Controller#Action
                    producers GET    /producers(.:format)                                   producers#index
                              POST   /producers(.:format)                                   producers#create
                     producer GET    /producers/:id(.:format)                               producers#show
                              PATCH  /producers/:id(.:format)                               producers#update
                              PUT    /producers/:id(.:format)                               producers#update
                              DELETE /producers/:id(.:format)                               producers#destroy

To get List of All Producer for a User

producers GET    /producers?user_id=X                                   producers#index
Where X is a VALID User ID


Response :

[
  {
    "id": 3,
    "name": "Producer XYZ",
    "producers_type": null,
    "user": {
      "id": 2,
      "email": "aaldy@g.com",
      "provider": "email",
      "uid": "aaldy@g.com",
      "name": null,
      "nickname": null,
      "image": null
    },
    "product_types": []
  }
]




To Add a Producer FOR a User

producers POST   /producers?user_id=X                              producers#create
Where X is a VALID User ID

Model :
{
	"name": "Producer XYZ",
	"producers_type": "Plant"
}


Response :

{
  "id": 3,
  "name": "Producer XYZ",
  "producers_type": null,
  "user": {
    "id": 2,
    "email": "aaldy@g.com",
    "provider": "email",
    "uid": "aaldy@g.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "product_types": []
}




Product Relations :
  belongs_to :user
  has_many :product_types





##################################################################################################################################

3. Product Types

 				Prefix Verb   URI Pattern                                            Controller#Action
       producer_product_types GET    /producers/:producer_id/product_types(.:format)        product_types#index
                              POST   /producers/:producer_id/product_types(.:format)        product_types#create
                 product_type GET    /product_types/:id(.:format)                           product_types#show
                              PATCH  /product_types/:id(.:format)                           product_types#update
                              PUT    /product_types/:id(.:format)                           product_types#update
                              DELETE /product_types/:id(.:format)                           product_types#destroy


To get a List of Product Types for a Producers

producer_product_types GET    /producers/:producer_id/product_types        product_types#index


Response :
[
  {
    "id": 1,
    "name": "Product Type XYZ",
    "product_types_type": "Organic",
    "description": "LOREM IPSUM",
    "producer": {
      "id": 1,
      "name": "Producer XYZ",
      "producers_type": null
    }
  },
  {
    "id": 2,
    "name": "Product Type JGK",
    "product_types_type": "Organic",
    "description": "LOREM IPSUM",
    "producer": {
      "id": 1,
      "name": "Producer XYZ",
      "producers_type": null
    }
  },
  {
    "id": 3,
    "name": "Product Type XYZ",
    "product_types_type": "Organic",
    "description": "LOREM IPSUM",
    "producer": {
      "id": 1,
      "name": "Producer XYZ",
      "producers_type": null
    }
  }
]


To add a Product Type to a Producer



producer_product_types POST   /producers/:producer_id/product_types(.:format)        product_types#create


Model : 
{
	"name": "Product Type XYZ",
	"product_types_type": "Organic",
	"description":"LOREM IPSUM"
}

Response :

{
  "id": 3,
  "name": "Product Type XYZ",
  "product_types_type": "Organic",
  "description": "LOREM IPSUM",
  "producer": {
    "id": 1,
    "name": "Producer XYZ",
    "producers_type": null
  }
}


  has_many :products


##################################################################################################################################

4. Products

 				Prefix Verb   URI Pattern                                            Controller#Action
        product_type_products GET    /product_types/:product_type_id/products(.:format)     products#index
                              POST   /product_types/:product_type_id/products(.:format)     products#create
                      product GET    /products/:id(.:format)                                products#show
                              PATCH  /products/:id(.:format)                                products#update
                              PUT    /products/:id(.:format)                                products#update
                              DELETE /products/:id(.:format)                                products#destroy


To get a List of Products for a Product Type

product_type_products GET    /product_types/:product_type_id/products(.:format)     products#index

Response :
[
  {
    "id": 1,



    "name": "Product FEW",
    "products_type": "some type",
    "description": "some desc",
    "cas_number": "FEF93-TR43F43",
    "quantity": 3000,
    "quantity_type": "KG",


    "product_type": {
      "id": 1,
      "name": "Product Type XYZ",
      "product_types_type": "Organic",
      "description": "LOREM IPSUM"
    }
  },
  {
    "id": 2,
    "name": "Product DEW",
    "products_type": "some type",
    "description": "some desc",
    "cas_number": "THRH-TR43F43",
    "quantity": 43,
    "quantity_type": "KG",
    "product_type": {
      "id": 1,
      "name": "Product Type XYZ",
      "product_types_type": "Organic",
      "description": "LOREM IPSUM"
    }
  }
]


To add a Product to a product Type


product_type_products POST   /product_types/:product_type_id/products(.:format)     products#create

Model : 
{
	  "name": "Product 524863479643",
      "products_type": "some type",
      "description":"some desc",
      "cas_number":"FEF93-TR43F43",
      "quantity":"3000",
      "quantity_type":"KG"
}


Response :
{
  "id": 3,
  "name": "Product 524863479643",
  "products_type": "some type",
  "description": "some desc",
  "cas_number": "FEF93-TR43F43",
  "quantity": 3000,
  "quantity_type": "KG",
  "product_type": {
    "id": 1,
    "name": "Product Type XYZ",
    "product_types_type": "Organic",
    "description": "LOREM IPSUM"
  }
}




  has_many :packages
  #################

localhost:3000/producers/1/producer_locations

GET


localhost:3000/producers/1/producer_locations

Model :

{
  "fulladdress":"fefefefef",
 "state":"Goa",
  "pincode":453535
}




##################################################################################################################################

5. Package

			    Prefix Verb   URI Pattern                                            Controller#Action
             product_packages GET    /products/:product_id/packages(.:format)               packages#index
                              POST   /products/:product_id/packages(.:format)               packages#create
                      package GET    /packages/:id(.:format)                                packages#show
                              PATCH  /packages/:id(.:format)                                packages#update
                              PUT    /packages/:id(.:format)                                packages#update
                              DELETE /packages/:id(.:format)                                packages#destroy

To get a List of Packages for a product


product_packages GET    /products/:product_id/packages(.:format)               packages#index


Response :


[
  {
    "id": 9,
    "packages_type": "RBRBREV",
    "quantity_type": null,
    "quantity": null,

    
    "shipment_id": 1,
    "warehouse_id": 1,
    "product": {
      "id": 1,
      "name": "Product FEW",
      "products_type": "some type",
      "description": "some desc",
      "cas_number": "FEF93-TR43F43",
      "quantity": 3000,
      "quantity_type": "KG"
    },
    "shipment": {
      "id": 1,
      "shipments_type": null,
      "name": "test",
      "status": null,
      "date_departure": null,
      "date_arrival": null,
      "logistics_service_id": 1
    },
    "warehouse": {
      "id": 1,
      "name": "Ware #1",
      "warehouses_type": "Godown"
    }
  }
]




To add a Package for a Product
product_packages POST   /products/:product_id/packages(.:format)               packages#create

Model : 


{

   "packages_type": "TEST PACKAGE #1",
    "quantity_type": "Litre",
    "quantity": "500"

}

Resposne :

{
  "id": 15,
  "packages_type": "TEST PACKAGE #1",
  "quantity_type": "Litre",
  "quantity": "500",
  "shipment_id": null,
  "warehouse_id": null,
  "product": {
    "id": 1,
    "name": "Product FEW",
    "products_type": "some type",
    "description": "some desc",
    "cas_number": "FEF93-TR43F43",
    "quantity": 3000,
    "quantity_type": "KG"
  },
  "shipment": null,
  "warehouse": null
}


//DEPRECATED!!!!!!!!!

3. ADD A WAREHOUSE TO A PACKAGE

  # PATCH/PUT /packages/1
  def update


    if @package.update_attributes(warehouse_id: params[:warehouse_id])

      render json: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  localhost:3000/packages/9?warehouse_id=1

  {
  "id": 14,
  "packages_type": "TEST PACKAGE",
  "quantity_type": null,
  "quantity": null,
  "shipment_id": 1,
  "warehouse_id": 1,
  "product": {
    "id": 1,
    "name": "Product FEW",
    "products_type": "some type",
    "description": "some desc",
    "cas_number": "FEF93-TR43F43",
    "quantity": 3000,
    "quantity_type": "KG"
  },
  "shipment": {
    "id": 1,
    "shipments_type": null,
    "name": "test",
    "status": null,
    "date_departure": null,
    "date_arrival": null,
    "logistics_service_id": 1
  },
  "warehouse": {
    "id": 1,
    "name": "Ware #1",
    "warehouses_type": "Godown"
  }
}







  belongs_to :product

  has_one :shipment

  belongs_to :shipment, optional: true
  belongs_to :warehouse, optional: true


  ##################################################################################################################################
  ##################################################################################################################################
  ##################################################################################################################################

 




##################################################################################################################################

7 Transport

 Prefix Verb   URI Pattern                                            Controller#Action

          logistic_transports GET    /transports(.:format)           transports#index
                              POST   /transports(.:format)           transports#create
                    transport GET    /transports/:id(.:format)                              transports#show
                              PATCH  /transports/:id(.:format)                              transports#update
                              PUT    /transports/:id(.:format)                              transports#update
                              DELETE /transports/:id(.:format)                              transports#destroy


To get a List of Transport for a Logistic

logistic_transports GET    /logistics?user_id=1           transports#index



Response :

[
  {
    "id": 6,
    "name": "BRBRNBRN TR ",
    "uid": "5346457547654",
    "transport_type"
    "logistic": {
      "id": 1,
      "logistics_type": "Air",
      "name": "Log Name"
    }
  }
]



To Create a Transport for a Logistic

POST   /logistics?user_id=1           transports#create


Model : 




{
    "transport_type": "Air",
    "name": "Transport X",
    "uid": "885487934889549"
}

Response : 


{
  "id": 2,
  "name": "Transport X",
  "uid": "885487934889549",
  "transport_type": "Air",
  "user": {
    "id": 1,
    "email": "user@gmail.com",
    "provider": "email",
    "uid": "user@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "logistics_services": []
}


##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################

SHIPMENT :  Complex


 Prefix Verb   URI Pattern                                            Controller#Action
                    shipments GET    /shipments(.:format)                                   shipments#index
                              POST   /shipments(.:format)                                   shipments#create
                     shipment GET    /shipments/:id(.:format)                               shipments#show
                              PATCH  /shipments/:id(.:format)                               shipments#update
                              PUT    /shipments/:id(.:format)                               shipments#update
                              DELETE /shipments/:id(.:format)                               shipments#destroy
shipment_addtologisticservice POST   /shipments/:shipment_id/addtologisticservice(.:format) shipments#addtologisticservice

1. LIST ALL SHIPMENTS


[
  {
    "id": 2,
    "shipments_type": "new",
    "name": "test",
    "status": "transit",
    "date_departure": null,
    "date_arrival": null,
    "logistics_service_id": 2,
    "packages": [],
    "user": {
      "id": 1,
      "email": "user@gmail.com",
      "provider": "email",
      "uid": "user@gmail.com",
      "name": null,
      "nickname": null,
      "image": null
    },
    "logistics_service": {
      "id": 2,
      "name": "name",
      "description": "Description XOXOXOXOOXO"
    },
    "logistics_service_locations": [
      {
        "id": 1,
        "lat": -43.4,
        "long": 12.5
      },
      {
        "id": 2,
        "lat": 43.4,
        "long": 65.4
      },
      {
        "id": 3,
        "lat": 12.4,
        "long": -125.4
      }
    ]
  }
]




2. CREATE A SHIPMENT FOR A USER  *DO THIS FIRST*

shipment POST   /shipments(.:format)                                   shipments#create

localhost:3000/shipments?user_id=1

Model : 

{
  "shipments_type":"Non Hazardous",
  "name":"Shipment to Warehouse Barkhas",
  "status":"Transit",
  "date_departure":"2017-04-01 18:50:40",
  "date_arrival":"2017-05-01 54:50:40"
}

Response : 


{
  "id": 1,
  "shipments_type": "Non Hazardous",
  "name": "Shipment to Warehouse Barkhas",
  "status": "Transit",
  "date_departure": "2017-04-01",
  "date_arrival": "2017-05-01",
  "logistics_service_id": null,
  "packages": [],
  "user": {
    "id": 1,
    "email": "user@gmail.com",
    "provider": "email",
    "uid": "user@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "logistics_service": null,
  "logistics_service_locations": []
}

3. PATCH/ ADD PACKAGES TO A SHIPMENT 

PATCH  /shipments/:id(.:format)                               shipments#update

url : 

192.168.43.150:3000/shipments/1?package_ids=1,2&warehouse_id=1
192.168.43.150:3000/shipments/1?package_ids=1,2&warehouse_id=1
192.168.43.150:3000/shipments/1?package_ids=1,2&warehouse_id=1
192.168.43.150:3000/shipments/1?package_ids=1,2&warehouse_id=1


  RESPONSE ON CALLING URL WILL RETURN : 
{
  "id": 1,
  "shipments_type": "Non Hazardous",
  "name": "Shipment to Warehouse Barkhas",
  "status": "Transit",
  "date_departure": "2017-04-01",
  "date_arrival": "2017-05-01",
  "logistics_service_id": null,
  "packages": [
    {
      "id": 1,
      "packages_type": "Barrel",
      "quantity_type": "Litre",
      "quantity": "50",
      "shipment_id": 1,
      "warehouse_id": 1
    },
    {
      "id": 2,
      "packages_type": "Barrel",
      "quantity_type": "Litre",
      "quantity": "50",
      "shipment_id": 1,
      "warehouse_id": 1
    }
  ],
  "user": {
    "id": 1,
    "email": "user@gmail.com",
    "provider": "email",
    "uid": "user@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "logistics_service": null,
  "logistics_service_locations": []
}



4. ADD A LOGISTIC SERVICE TO A SHIPMENT

shipment_addtologisticservice POST   /shipments/:shipment_id/addtologisticservice(.:format) shipments#addtologisticservice



  def addtologisticservice
    @shipment = Shipment.find(params[:shipment_id])
    @shipment.update_attributes(logistics_service_id: params[:logistics_service_id])

    render json: @shipment


  end




  localhost:3000/shipments?user_id=1

[
  {
    "id": 2,
    "shipments_type": "new",
    "name": "test",
    "status": "transit",
    "date_departure": null,
    "date_arrival": null,
    "logistics_service_id": null,
    "packages": [],
    "user": {
      "id": 1,
      "email": "user@gmail.com",
      "provider": "email",
      "uid": "user@gmail.com",
      "name": null,
      "nickname": null,
      "image": null
    },
    "logistics_service": null
  }
]

Adding Log Service id 2


{
  "id": 2,
  "name": "name",
  "description": "Description XOXOXOXOOXO",
  "logistic": {
    "id": 1,
    "logistics_type": "Air",
    "name": "Log Name"
  },
  "shipment": null,
  "transport": {
    "id": 7,
    "name": "Transport X",
    "uid": "885487934889549"
  }
}



localhost:3000/shipments/2/addtologisticservice?logistics_service_id=2


{
  "id": 2,
  "shipments_type": "new",
  "name": "test",
  "status": "transit",
  "date_departure": null,
  "date_arrival": null,
  "logistics_service_id": 2,
  "packages": [],
  "user": {
    "id": 1,
    "email": "user@gmail.com",
    "provider": "email",
    "uid": "user@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "logistics_service": {
    "id": 2,
    "name": "name",
    "description": "Description XOXOXOXOOXO"
  }
}






##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################

lOGISTIC SERVICE

 Prefix Verb   URI Pattern                                            Controller#Action
  

                 transport_logistics_services GET    /transports/:transport_id/logistics_services(.:format)                          logistics_services#index
                                              POST   /transports/:transport_id/logistics_services(.:format)                          logistics_services#create
                            logistics_service GET    /logistics_services/:id(.:format)                                               logistics_services#show
                                              PATCH  /logistics_services/:id(.:format)                                               logistics_services#update
                                              PUT    /logistics_services/:id(.:format)                                               logistics_services#update
                                              DELETE /logistics_services/:id(.:format)                                               logistics_services#destroy


1. CGET LIST OF LOG SERVICE

localhost:3000/transports/1/logistics_services

Response:
[
  {
    "id": 1,
    "name": null,
    "description": null,
    "logistic": {
      "id": 1,
      "logistics_type": "Air",
      "name": "Log Name"
    },
    "shipment": {
      "id": 1,
      "shipments_type": null,
      "name": "test",
      "status": null,
      "date_departure": null,
      "date_arrival": null,
      "logistics_service_id": 1
    },
    "transport": null
  }
]


2. CREATE LOG SERVICE WITH LOGISTIC AND TRANSPORT

POST   /transports/:transport_id/logistics_services(.:format)   logistics_services#create


192.168.43.150:3000/transports/2/logistics_services

Model :


{
	"name": "name",
    "description": "Description XOXOXOXOOXO"
}

Response :

{
  "id": 2,
  "name": "name",
  "description": "Description XOXOXOXOOXO",
  "shipment": null,
  "transport": {
    "id": 2,
    "name": "Transport X",
    "uid": "885487934889549",
    "transport_type": "Air"
  },
  "logistics_service_locations": []
}

##################################################################################################################################

LOGISTIC SERVICE LOCATIONS



logistics_service_logistics_service_locations GET    /logistics_services/:logistics_service_id/logistics_service_locations(.:format) logistics_service_locations#index
                                              POST   /logistics_services/:logistics_service_id/logistics_service_locations(.:format) logistics_service_locations#create
                   logistics_service_location GET    /logistics_service_locations/:id(.:format)                                      logistics_service_locations#show
                                              PATCH  /logistics_service_locations/:id(.:format)                                      logistics_service_locations#update
                                              PUT    /logistics_service_locations/:id(.:format)                                      logistics_service_locations#update
                                              DELETE /logistics_service_locations/:id(.:format)                                      logistics_service_locations#destroy


1. GET LIST OF LOCATION FOR SERVICE

logistics_service_logistics_service_locations GET    /logistics_services/:logistics_service_id/logistics_service_locations(.:format) logistics_service_locations#index

Resonse : 


localhost:3000/logistics_services/2/logistics_service_locations

Response : 

[
  {
    "id": 1,
    "lat": -43.4,
    "long": 12.5,
    "logistics_service": {
      "id": 2,
      "name": "name",
      "description": "Description XOXOXOXOOXO"
    }
  },
  {
    "id": 2,
    "lat": 43.4,
    "long": 65.4,
    "logistics_service": {
      "id": 2,
      "name": "name",
      "description": "Description XOXOXOXOOXO"
    }
  },
  {
    "id": 3,
    "lat": 12.4,
    "long": -125.4,
    "logistics_service": {
      "id": 2,
      "name": "name",
      "description": "Description XOXOXOXOOXO"
    }
  }
]


2. ADD LOCATION TO SERVICE

logistics_service_logistics_service_locations  POST   /logistics_services/:logistics_service_id/logistics_service_locations(.:format) logistics_service_locations#create

Model :

{
  "lat":
  "long":
}


Response :



{
  "id": 1,
  "lat": -43.4,
  "long": 12.5,
  "logistics_service": {
    "id": 2,
    "name": "name",
    "description": "Description XOXOXOXOOXO"
  }
}









##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################
##################################################################################################################################

WAREHOUSE

 Prefix Verb   URI Pattern                                            Controller#Action
  


                   warehouses GET    /warehouses(.:format)                                  warehouses#index
                              POST   /warehouses(.:format)                                  warehouses#create
                    warehouse GET    /warehouses/:id(.:format)                              warehouses#show
                              PATCH  /warehouses/:id(.:format)                              warehouses#update
                              PUT    /warehouses/:id(.:format)                              warehouses#update
                              DELETE /warehouses/:id(.:format)                              warehouses#destroy


TO GET LIST OF WAREHOUSE FOR USER

localhost:3000/warehouses?user_id=1
[
  {
    "id": 1,
    "name": "Ware #1",
    "warehouses_type": "Godown",
    "user": {
      "id": 1,
      "email": "user@gmail.com",
      "provider": "email",
      "uid": "user@gmail.com",
      "name": null,
      "nickname": null,
      "image": null
    },
    "packages": [
      {
        "id": 9,
        "packages_type": "RBRBREV",
        "quantity_type": null,
        "quantity": null,
        "shipment_id": 1,
        "warehouse_id": 1
      },
      {
        "id": 14,
        "packages_type": "TEST PACKAGE",
        "quantity_type": null,
        "quantity": null,
        "shipment_id": 1,
        "warehouse_id": 1
      }
    ]
  }
]


to create a warehouse


localhost:3000/warehouses?user_id=1


{
	    "name": "Ware #2",
    "warehouses_type": "Silo"
}



{
  "id": 2,
  "name": "Ware #2",
  "warehouses_type": "Silo",
  "user": {
    "id": 1,
    "email": "user@gmail.com",
    "provider": "email",
    "uid": "user@gmail.com",
    "name": null,
    "nickname": null,
    "image": null
  },
  "packages": []
}


















