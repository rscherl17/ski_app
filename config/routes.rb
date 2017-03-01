Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "mountains#index"
  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Run resource:
  # CREATE
  get "/runs/new", :controller => "runs", :action => "new"
  post "/create_run", :controller => "runs", :action => "create"

  # READ
  get "/runs", :controller => "runs", :action => "index"
  get "/runs/:id", :controller => "runs", :action => "show"

  # UPDATE
  get "/runs/:id/edit", :controller => "runs", :action => "edit"
  post "/update_run/:id", :controller => "runs", :action => "update"

  # DELETE
  get "/delete_run/:id", :controller => "runs", :action => "destroy"
  #------------------------------

  # Routes for the Mountain resource:
  # CREATE
  get "/mountains/new", :controller => "mountains", :action => "new"
  post "/create_mountain", :controller => "mountains", :action => "create"

  # READ
  get "/mountains", :controller => "mountains", :action => "index"
  get "/mountains/:id", :controller => "mountains", :action => "show"

  # UPDATE
  get "/mountains/:id/edit", :controller => "mountains", :action => "edit"
  post "/update_mountain/:id", :controller => "mountains", :action => "update"

  # DELETE
  get "/delete_mountain/:id", :controller => "mountains", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
