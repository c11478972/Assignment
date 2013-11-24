class SessionsController < ApplicationController
	skip_filter :authorise
	def new
	end

	def create
			customer = Customer.find_by_email(params[:email])
			if customer && customer.authenticate(params[:password])
				session[:customer_id] = customer.id
				if session[:return_to] == nil
					redirect_to service_stations_path
				else
					redirect_to session[:return_to]
					session[:return_to] = nil
				end
			else
				flash.now[:error] = "Invalid email/password combination."
				render 'new' # shows the sign in page
			end
	end

	def destroy
			if signed_in?
				session[:customer_id] = nil
			else
				flash[:notice]="Don't put the cart before the horse!! Sign in first"
			end
			redirect_to root_path	
	end
end
