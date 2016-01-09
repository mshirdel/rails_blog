include ActionController::Live
class WelcomeController < ApplicationController
  def index
#  	@posts = Post.all
  end
  
  def show
  	@posts = Post.all
    render json: @posts
  end
  
  def stream
    response.headers['Content-Type'] = 'text/event-stream'
    5.times {
      response.stream.write "hello world\n"
      sleep 1
    }
  ensure
    response.stream.close
  end
end
