class PostsController < ApplicationController
  before_action :require_user, only: [:create, :destroy]

  def index
    @posts = Post.all.limit(20)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params.merge!(user_id: current_user.id))
    if @post.save
      flash[:success] = "Blog Post was created"
      redirect_to root_path
    else
      flash[:error] = "Blog post was not created.  Try again!"
      render :back
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.delete
      flash[:success] = "Post was deleted."
      redirect_to root_path
    else
      flash[:error] = "There was an error trying to delete the post."
      render :back
    end
  end

  def heroes

    @posts = Post.where(category: Category.where(name: "Heroes of the Storm")).all.limit(20)
  end

  def hearthstone
    @posts = Post.where(category: Category.where(name: "Hearthstone")).all.limit(20)
  end

  private

  def post_params
    params.require(:post).permit(:body, :description, :title, :banner_lg, :banner_sm, :tagline, :category_id)
  end

end
