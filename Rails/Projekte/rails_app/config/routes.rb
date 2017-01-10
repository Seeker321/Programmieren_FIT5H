Rails.application.routes.draw do
  root 'events#index' #wenn localhost:3000 aufgerufen wird, hierhin gehen
  
  resources :events do
  	resources :registrations #bindet alles von regi.. ein
  end
end
