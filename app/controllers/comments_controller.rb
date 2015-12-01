class CommentsController < ApplicationController
  before_action :find_comment, only: [ :edit, :update, :destroy]
  before_action :verify_user, only: [:edit, :update, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:comment))
    @comment.user_id=current_user.id if current_user
    @comment.save
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    if @comment.update(params[:comment].permit(:comment))
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end
  def destroy
   @comment.destroy
    redirect_to post_path(@post)
  end
  private
  def find_comment
    @post = Post.find(params[:post_id])
    @comment =@post.comments.find(params[:id])
  end
  def verify_user
    if current_user != @comment.user
      render_404
    end
  end
  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
    false
  end
end
