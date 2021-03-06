class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params.merge(user: current_user))
		if @comment.save
			flash[:notice] = "Comment Added"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Comment did not save"
			redirect_to post_path(@post)
		end
	end
  	def new
  		@post = Post.find(params[:post_id])
  		@comment = Comment.new()
  	end

 	def edit
  		@post = Post.find(params[:post_id])
  		@comment = Comment.find(params[:id])
  	end
  	def update
  		@post = Post.find(params[:post_id])
  		@comment = @post.comments.find(params[:id])
      if @comment.user == current_user
  		  if @comment.update(comment_params)
  			 flash[:notice] = "Edit Successful"
  			 redirect_to post_path(@post)
  		  else
  			 flash[:alert] = "Edit did not Save"
  			 redirect_to post_path(@post)
  		  end
      else
        flash[:alert] = "You can't edit another persons comment"
        redirect_to root_path
      end
  	end

  	def destroy
  		@post = Post.find(params[:post_id])
  		@comment = @post.comments.find(params[:id])
      if @comment.user == current_user
  		  if @comment.destroy
  		  	flash[:notice] = "Comment Removed"
  		  	redirect_to post_path(@post)
  		  else
  		  	flash[:alert] = "Comment could not be Removed"
  		  	redirect_to post_path(@post)
  		  end
      else
        flash[:alert] = "Cant delete comments that are not your own"
        redirect_to root_path
      end
  	end

  	private
  		def comment_params
  			params.require(:comment).permit(:content)
  		end
end
