class PostsController < ApplicationController

  def index
  	@posts = Post.includes(:comments).all
  end

  def new
  	@post = Post.new
  end

  def create
  	puts params[:post]
  	@post = Post.new(params[:post])

  	@post.user_id = 1

  	if @post.save
  		flash[:notice] = "Post was successfully created."
  		redirect_to posts_path
  	else
  		render 'new'
  	end
  end

  def show
  	@post = Post.find(params[:id])
  	@comment = @post.comments.build
  end
end
