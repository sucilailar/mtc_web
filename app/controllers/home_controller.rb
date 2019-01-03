class HomeController < ApplicationController
	def index
		 current_user = Akun.find_by_id(session[:akun_id])
	end
end
