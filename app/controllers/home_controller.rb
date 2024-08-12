class HomeController < ApplicationController
  # before_action :authenticate_user!
  
  def index
    @posts = Post.all
    puts '------------------'
    puts @posts

  end
end
