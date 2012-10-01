class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
  	@comment = current_user.comments.create(params[:comment])
  	redirect_to :back
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to link_path, :notice => "Comment successfully deleted"
  end
end
