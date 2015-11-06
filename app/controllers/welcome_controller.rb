class WelcomeController < ApplicationController
  def index
#  	@posts = Post.all
  end
  
  def show
  	@posts = Post.all
    render json: @posts
  end
end
