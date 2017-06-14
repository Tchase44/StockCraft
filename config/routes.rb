Rails.application.routes.draw do
	root to: 'posts#index'

  	devise_for :users 
	
	resources :posts do
		resources :comments, only: [:create, :new, :edit, :update, :destroy]
		
	end

	resources :stocks, only: [:show, :list, :new, :create] do
    	member do
    	  post 'add_to_watchlist'
    	  delete 'remove_from_watchlist'
    	end
  	end

	# get "posts/stocks/:id" => "stocks#show"
	get '/watchlist' => "stocks#list"
	# post '/stocks/add_to_watchlist/:id' => 'stocks#add_to_watchlist'
 #    delete '/stocks/:id/remove_from_watchlist' => 'stocks#remove_from_watchlist'
end
