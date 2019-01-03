module SessionHelper

  # Logs in the given user.
  # require 'pry'
  # binding.pry
  def log_in(akun)
    session[:akun_id] = akun.id
  end

  def current_user
    if session[:akun_id]
      @current_akun ||= Akun.find_by(id: session[:akun_id])
    end
  end

  def logged_in?
	    !current_user.nil?
	end

end