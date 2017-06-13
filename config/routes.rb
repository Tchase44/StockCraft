Rails.application.routes.draw do

  devise_for :users #, :controllers => { :omniauth_callbacks => "callbacks" }
	root to: 'posts#index'
	resources :posts do
		resources :comments, only: [:create, :new, :edit, :update, :destroy]
		
	end

	resources :stocks, only: [:show, :list] do
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
