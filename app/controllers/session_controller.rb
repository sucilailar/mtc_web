class SessionController < ApplicationController
	def new
	end

	

	def create
		require 'pry'
	binding.pry
  		@akun = Akun.find_by_username(params[:session][:username])
		  if @akun && @akun.authenticate(params[:session][:password])
		    session[:akun_id] = @akun.id
		    log_in @akun
		    redirect_to '/'
		  else
		  	flash[:danger] = "kata sandi salah atau user tidak ditemukan"
		    redirect_to '/login'
		  end 
	end

	def destroy  
	 	session[:akun_id] = nil         
	    redirect_to '/' 
	end
end