Rails.application.routes.draw do
  get 'todos/index'
  get 'pages/home'
  get 'pages/about'
  match "todos/add" => "todos#add", :via => :post
  match 'todos/complete' => 'todos#complete', :via => :post
  match 'todos/not_complete' => 'todos#not_complete', :via => :get
  match 'todos/delete' => 'todos#destroy', :via => :delete
  root to: 'todos#index'

end
