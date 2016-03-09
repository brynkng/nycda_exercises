class PostsController < ApplicationController

  def index
    @posts =Post.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "You're fired!"
    else
      flash[:notice] = "Censorship failed."
    end
      redirect_to '/admins'
  end

end
