class CommentsController < ApplicationController
  def index
    @post = Post.find_by(params[:post_id])
    @comments = Comment.where(post_id: @post.id)
  end

  def new
    @post = Post.find_by(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new comment_params
    @post = Post.find_by(params[:post_id])
    @comment.post_id = @post.id

    if @comment.save
      redirect_to post_comments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    @comment = Comment.find_by(params[:id])
  end

  def delete
  end

  private

  def comment_params
    #params.require(:comment).permit(:comment, :author)
    params.expect(comment: [ :comment, :author ])
  end
end
