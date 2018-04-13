class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content],
                    user_id: @current_user.id)
    @post.save
    redirect_to action: :index
  end

  def edit
     @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts")
  end

  def destroy
   @post = Post.find_by(id: params[:id])
   @post.destroy
   redirect_to("/posts")
  end
end
