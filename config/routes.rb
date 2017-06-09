Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Fabrics_in_order resource:
  # CREATE
  get "/fabrics_in_orders/new", :controller => "fabrics_in_orders", :action => "new"
  post "/create_fabrics_in_order", :controller => "fabrics_in_orders", :action => "create"

  # READ
  get "/fabrics_in_orders", :controller => "fabrics_in_orders", :action => "index"
  get "/fabrics_in_orders/:id", :controller => "fabrics_in_orders", :action => "show"

  # UPDATE
  get "/fabrics_in_orders/:id/edit", :controller => "fabrics_in_orders", :action => "edit"
  post "/update_fabrics_in_order/:id", :controller => "fabrics_in_orders", :action => "update"

  # DELETE
  get "/delete_fabrics_in_order/:id", :controller => "fabrics_in_orders", :action => "destroy"
  #------------------------------

  # Routes for contact resource:
  # contact
  get "/contact", :controller => "contact", :action => "form"
  get "/edit_delete", :controller => "contact", :action => "edit_delete"

  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get "/orders/new", :controller => "orders", :action => "new"
  post "/create_order", :controller => "orders", :action => "create"

  # READ
  get "/orders", :controller => "orders", :action => "index"
  get "/orders/:id", :controller => "orders", :action => "show"

  # UPDATE
  get "/orders/:id/edit", :controller => "orders", :action => "edit"
  post "/update_order/:id", :controller => "orders", :action => "update"

  # DELETE
  get "/delete_order/:id", :controller => "orders", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Fabric resource:
  # CREATE
  get "/fabrics/new", :controller => "fabrics", :action => "new"
  post "/create_fabric", :controller => "fabrics", :action => "create"

  # READ
  get "/fabrics", :controller => "fabrics", :action => "index"
  get "/fabrics/:id", :controller => "fabrics", :action => "show"

  # UPDATE
  get "/fabrics/:id/edit", :controller => "fabrics", :action => "edit"
  post "/update_fabric/:id", :controller => "fabrics", :action => "update"

  # DELETE
  get "/delete_fabric/:id", :controller => "fabrics", :action => "destroy"
  #------------------------------
  root to: "orders#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for the user resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
end
