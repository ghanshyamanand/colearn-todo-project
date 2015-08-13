Rails.application.routes.draw do
  get 'todos/index'
  get 'pages/home'
  get 'pages/about'
  get "/todos/delete"
  match "todos/add" => "todos#add", :via => :post
  match 'todos/complete' => 'todos#complete', :via => :post
  match 'todos/not_complete' => 'todos#not_complete', :via => :get
  root to: 'todos#index'
end
