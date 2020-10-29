Rails.application.routes.draw do
  get "lists" => "lists#index"
  get "lists/new" => "lists#new"
  post "lists" => "lists#create"
  get "items" => "items#index"
  get "items/new" => "items#new"
  post "items" => "items#create"
  get "lists/:id" => "lists#show"
  get "items/:id" => "items#show"
  get "lists/:id/edit" => "lists#edit"
  patch "lists/:id" => "lists#update"
  delete "lists/:id" => "lists#destroy"
  get "appearances" => "appearances#index"
  post "appearances" => "appearances#create"
end
