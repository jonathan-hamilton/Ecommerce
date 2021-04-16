class PagesController < ApplicationController
    def home
        redirect_to stores_path if logged_in?
    end
end