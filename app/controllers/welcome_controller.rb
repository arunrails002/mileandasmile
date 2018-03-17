class WelcomeController < ApplicationController
	before_filter :disable_nav, only: [:index]
  def index
  	@disable_nav = false
  end
end
