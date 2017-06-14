class StocksController < ApplicationController

	def show
		@stock = Stock.find(params[:id])
	end

	def list
		@my_list = Watchlist.where(user: current_user)
		@my_stocks = []
		@my_list.each do |x|

			@my_stocks.push(x.stock_id)

		end
	end

	def new
		@stock = Stock.new()
	end

	def create
		#stuff to search through
		@all_stocks = Stock.all
		@my_list = Watchlist.where(user: current_user)
		#new Stock 
		@stock = Stock.new(stock_params)
		@stock.ticker.upcase!
		#exsisting Stock
		@db_stock = Stock.find_by(ticker: @stock.ticker)
		# if in database
		if @all_stocks.any? {|h| h[:ticker] == @stock.ticker}
			#if in watchlist
			if @my_list.any? {|h| h[:stock_id] == @db_stock.id}
				#in both
				flash[:notice] = "That stock is already in your watchlist"
				redirect_to watchlist_path
			else
				# in database, not in watchlist
				@db_stock.ticker.upcase!
				@db_stock.update(stock_params)
				@db_stock.watchlists.create!(user: current_user)
				flash[:notice] = "#{@db_stock.ticker} added to list"
				redirect_to watchlist_path
			end
		else
			#not in either
			@stock.save
			@stock.watchlists.create!(user: current_user)
			flash[:notice] = "#{@stock.ticker} added to list"
			redirect_to watchlist_path
		end
	end

	def add_to_watchlist
		@my_stock = Stock.find(params[:id])
		@my_list = Watchlist.where(user: current_user)

		if @my_list.any? {|h| h[:stock_id] == @my_stock.id}
			flash[:notice] = "You are already watching this stock"
			redirect_to root_path
		else
			@my_stock.watchlists.create!(user: current_user)
			flash[:notice] = "#{@my_stock.ticker} added to watchlist"
			redirect_to watchlist_path
		end
  	end

  	def remove_from_watchlist
		@stock = Stock.find(params[:id])

   	if Watchlist.find_by(user: current_user, stock_id: params[:id]).destroy
   		flash[:alert] = "Stock Removed from watchlist"
   		redirect_to watchlist_path
   	else
   		flash[:alert] = "Could not remove stock"
   		redirect_to watchlist_path
   	end

  	end

  	private
  		def stock_params
  			params.require(:stock).permit(:ticker,:price)
  		end

end