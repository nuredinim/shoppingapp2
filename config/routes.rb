Rails.application.routes.draw do
  get "lists" => "lists#index"
  get "lists/new" => "lists#new"
  post "lists" => "lists#create"
  get "items" => "items#index"
end
