Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'

  get '/index' => 'books#index'
  post '/books/create' => 'books#create'

  get '/books/:id' => 'books#show'

end
