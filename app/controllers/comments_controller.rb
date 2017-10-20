class CommentsController < ApplicationController
  before_action :find_post
  
  def create
    @comment = @post.comments.create(comment_params)
    @comment.save
    
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
    
  end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
  
    def find_post
    @post = Post.find(params[:post_id])
    end
end
