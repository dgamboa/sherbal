class PagesController < ApplicationController
	def index
		@links = Link.order('created_at DESC').paginate(:per_page => params[:per_page] ||= 25, 
																										:page 		=> params[:page] 		 ||= 1 )
	end
end
