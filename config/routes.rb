Week4hw::Application.routes.draw do

  get "/" => "pages#home"
  get "/weather/search" => "pages#search"
  get "/weather/conditions" => "pages#conditions"

  get "/index" => "transactions#index"
  get "/show" => "transactions#show"





end
