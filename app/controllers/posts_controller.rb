class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

  private
  def post_params
    params.require(:post).permit(:image, :content)
  end
end
