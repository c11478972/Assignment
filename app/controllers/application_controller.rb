class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  before_filter :authorise
  
  def authorise
		unless signed_in?					# the same as if !signed_in?
			store_location					#Is a call to a method in this class
			redirect_to signin_path, :notice=> "Please sign in to access this page."
		end
	end
	
	def store_location
		session[:return_to] = request.fullpath
	end
end
