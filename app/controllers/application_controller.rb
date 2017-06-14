class ApplicationController < ActionController::Base
	# include Pundit
	protect_from_forgery with: :exception

	before_action :authenticate_user!, except: [:index,:show]

	rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
	rescue_from NoMethodError, with: :no_method_error

	private
  	def couldnt_find_record
    	redirect_to root_url, notice: "That stock doesn't exist??"
  	end

  	def no_method_error
    redirect_to root_url, notice: "Something doesn't exist"
    end

end



