Rails.application.routes.draw do
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
