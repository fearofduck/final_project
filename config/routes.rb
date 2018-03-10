Rails.application.routes.draw do
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

  # Routes for the Cycle_time resource:
  # CREATE
  get "/cycle_times/new", :controller => "cycle_times", :action => "new"
  post "/create_cycle_time", :controller => "cycle_times", :action => "create"

  # READ
  get "/cycle_times", :controller => "cycle_times", :action => "index"
  get "/cycle_times/:id", :controller => "cycle_times", :action => "show"

  # UPDATE
  get "/cycle_times/:id/edit", :controller => "cycle_times", :action => "edit"
  post "/update_cycle_time/:id", :controller => "cycle_times", :action => "update"

  # DELETE
  get "/delete_cycle_time/:id", :controller => "cycle_times", :action => "destroy"
  #------------------------------

  # Routes for the Seasonality resource:
  # CREATE
  get "/seasonalities/new", :controller => "seasonalities", :action => "new"
  post "/create_seasonality", :controller => "seasonalities", :action => "create"

  # READ
  get "/seasonalities", :controller => "seasonalities", :action => "index"
  get "/seasonalities/:id", :controller => "seasonalities", :action => "show"

  # UPDATE
  get "/seasonalities/:id/edit", :controller => "seasonalities", :action => "edit"
  post "/update_seasonality/:id", :controller => "seasonalities", :action => "update"

  # DELETE
  get "/delete_seasonality/:id", :controller => "seasonalities", :action => "destroy"
  #------------------------------

  # Routes for the Forecast resource:
  # CREATE
  get "/forecasts/new", :controller => "forecasts", :action => "new"
  post "/create_forecast", :controller => "forecasts", :action => "create"

  # READ
  get "/forecasts", :controller => "forecasts", :action => "index"
  get "/forecasts/:id", :controller => "forecasts", :action => "show"

  # UPDATE
  get "/forecasts/:id/edit", :controller => "forecasts", :action => "edit"
  post "/update_forecast/:id", :controller => "forecasts", :action => "update"

  # DELETE
  get "/delete_forecast/:id", :controller => "forecasts", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
