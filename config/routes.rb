Rails.application.routes.draw do

  devise_for :users #, :controllers => { :omniauth_callbacks => "callbacks" }
	root to: 'posts#index'
	resources :posts do
		resources :comments, only: [:create, :new, :edit, :update, :destroy]
		
	end
end
