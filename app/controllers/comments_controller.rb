class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
  	@comment = Comment.new(params[:comment])
  	@comment.post_id = @post.id
    @comment.user_id = 1 #TODO: Update to current user

  	if @comment.save
  		flash[:notice] = "Comment was successfully created."
  		redirect_to post_path(@comment.post)
  	else		
      render 'posts/show'
  	end		
  end

end