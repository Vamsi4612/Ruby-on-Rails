class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create
    # @post = Post.new(
    #   title: params[:title],
    #   body: params[:body]
    # )
    # byebug
    puts @post
    @post = Post.new(t_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
    
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update(task_params)
      redirect_to posts_path
    else
      render :edit
    end
    
    
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
    def task_params
      params.require(:post).permit(:title, :body)
    end
  
  private
  def t_params
    params.permit(:title, :body)
  end
end
