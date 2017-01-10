Rails.application.routes.draw do
  
	root 'movies#index' #wenn localhost:3000 aufgerufen wird, hierhin gehen

  resources :movies do
  	resources :reviews
  end
end
