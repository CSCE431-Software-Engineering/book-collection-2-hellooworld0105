Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #resources :books
  root 'books#index'
  
  get '/addbook', to: 'add_book_view#addbook'
  post '/addbook' => 'add_book_view#create'

  get '/remove/:title'=> 'remove#remove'
  post '/remove_books/:title' => 'remove#remove_book'

  get '/edit/:title' => 'edit#editbook'
  post '/edit/:title' => 'edit#edit'

  get '/read/:title' => 'read#read'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
