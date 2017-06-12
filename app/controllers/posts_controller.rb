class PostsController < ApplicationController
  def index
  	@posts = Post.all.order(:created_at).reverse
  end

  def create
  	@post = Post.new(post_params)
    # @post = current_user.posts.new(post_params)
  	if @post.save
  		flash[:notice] = "New Post Created"
  		redirect_to root_path
  	else
  		flash[:alert] = "Error Post did not save"
  		redirect_to root_path
  	end
  end

  def new
  	@post = Post.new
  end

  def edit 
  	@post = Post.find(params[:id])
  end

  def show
  	@post = Post.find(params[:id])
  	@comments = @post.comments.all
  end

  def update
  	@post = Post.find(params[:id])

  	if @post.update(post_params)
  		flash[:notice] = "Edit Successful"
  		redirect_to post_path(@post)
  	else
  		flash[:alert] = "Edit did not save!"
  		redirect_to post_path(@post)
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
  	if @post.destroy
  		flash[:notice] = "Post Destroyed"
  		redirect_to root_path
  	else
  		flash[:alert] = "Post did not delete"
  		redirect_to root_path
  	end
  end

  private
  	def post_params
  		params.require(:post).permit(:ticker,:body)
  	end
end
