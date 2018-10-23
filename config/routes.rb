Rails.application.routes.draw do
 
	root 'api/songs#index'
	get '/favicon.ico', to: 'api/songs#index'
	get 'api/songs/:id/resources', to: 'api/songs#resources'
	get 'api/songs/:id/collections', to: 'api/songs#collections'

	namespace :api do 
	  resources :categories
		resources :songs
		resources :song_collections
		resources :collections
		resources :resources
	end
end
