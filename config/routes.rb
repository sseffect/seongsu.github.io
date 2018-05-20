Rails.application.routes.draw do
  #create
  get '/friends/new' => 'friends#new'
  post '/friends/create' => 'friends#create'
  
  #read
  get '/friends' => 'friends#index'
  get '/friends/:id' => 'friends#show'
  
  #update
  get '/friends/:id/edit' => 'friends#edit'
  patch '/friends/:id' => 'friends#update'
  
  #destroy
  delete '/friends/:id' => 'friends#destroy'
end
