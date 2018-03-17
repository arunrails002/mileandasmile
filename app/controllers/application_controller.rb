class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
protected
	def disable_nav
	  @disable_nav = true
	end

end
