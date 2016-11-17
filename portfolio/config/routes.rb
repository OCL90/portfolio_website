Rails.application.routes.draw do

  root 'clients#index'

  post 'clients' => 'clients#create'

  get 'admin' => 'admins#index'

  post 'admin/login' => 'admins#login'

  get 'admin/:id' => 'admins#show'

  get 'logout' => 'admins#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
