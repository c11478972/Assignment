module ApplicationHelper
	def signed_in?
		if session[:customer_id].nil?
			return
		else
			@current_customer = Customer.find_by_id(session[:customer_id])
		end
	end
end
