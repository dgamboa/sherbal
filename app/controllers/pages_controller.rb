class PagesController < ApplicationController
	def index
		@links = Link.joins('LEFT OUTER JOIN votes ON links.id = votes.link_id').select('links.*, count(up) as "vote_count"').
      group(:link_id).order('vote_count DESC').paginate(:per_page => params[:per_page] ||= 10, 
																								        :page 		=> params[:page] 		 ||= 1 )
	end
end
