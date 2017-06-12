class PostsController < ApplicationController
  before_action :authenticate_user!,execpt: [:index, :show]

  # after_action 
  # after_action 
  def index
  	@posts = Post.all.order(:created_at).reverse
  end

  def create
  	# @post = Post.new(post_params)
   @post = Post.create!(post_params.merge(user: current_user))
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
    authorize @post
   if @post.user == current_user
  	   if @post.update(post_params)
  		  flash[:notice] = "Edit Successful"
  		  redirect_to post_path(@post)
  	   else
  		  flash[:alert] = "Edit did not save!"
  		  redirect_to post_path(@post)
  	   end
   else
      flash[:alert] = "Sorry you are not allowed to edit this"
      redirect_to root_path
   end
  end

  def destroy
  	@post = Post.find(params[:id])
    if @post.user == current_user
  	  if @post.destroy
  	 	  flash[:notice] = "Post Destroyed"
  		  redirect_to root_path
  	  else
  		  flash[:alert] = "Post did not delete"
  		  redirect_to root_path
  	  end
    else
      flash[:alert] = "You are not allowed to delete this"
      redirect_to edit_post_path(@post)
    end
  end

  private
  	def post_params
  		params.require(:post).permit(:ticker,:body)
  	end
end
