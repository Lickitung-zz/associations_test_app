Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/characters' => 'characters#index'
    post '/characters' => 'characters#create'
    get '/characters/:id' => 'characters#show'
    delete '/characters/:id' => 'characters#delete'

    get '/users' => 'users#index'
    get '/users/:id' => 'users#show'
    post '/users' => 'users#create'
    put '/users/:id' => 'users#update'
    
    post "/sessions" => "sessions#create"
  end
end
