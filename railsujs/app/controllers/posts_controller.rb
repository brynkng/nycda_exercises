class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    respond_to do |format|
      format.js
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end

end
