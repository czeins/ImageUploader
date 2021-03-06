class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
        redirect_to root_path
    else
        render "new"
    end
  end

  def show
    @post = post.find(params[:id])
  end


    private

    def post_params
        params.require(:post).permit(:content, :picture)
    end

end