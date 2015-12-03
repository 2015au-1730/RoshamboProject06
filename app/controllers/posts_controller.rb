class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :verify_user, only: [:edit, :update, :destroy]

  def index
    @posts=Post.all.order("created_at DESC")
  end

  def show

  end

  def new
    @post=current_user.posts.build
  end

  def create
    @post=current_user.posts.build(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @post=Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def verify_user
    if current_user != @post.user
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
