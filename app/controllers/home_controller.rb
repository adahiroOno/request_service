class HomeController < ApplicationController
  def index
    @post = Post.new
  end
  def create
    Post.create!(post_params)
    flash[:success] = "Success!"
    redirect_to home_path
  end

  private

  def post_params
    params.require(:post).permit!
  end
end
