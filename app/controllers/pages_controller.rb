class PagesController < ApplicationController
	def index
		@links = Link.includes(:user).all
	end
end
