class ApplicationController < ActionController::Base

    helper_method :current_customer, :logged_in?, :current_order, :current_store, :in_a_store?

    def current_customer
        @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]            
    end

    def logged_in?
        !!current_customer
    end

    def current_order
        @current_order ||= Order.find_by(customer_id: (session[:customer_id]))
    end

    def current_store
        @current_store ||= Store.find(session[:customer_id]) if session[:customer_id]
    end
end
