class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
  end

  def new
    @post = Post.new    
  end

  def create    
    @user = User.find(current_user.id)
    @post = @user.posts.new(post_params)

    if @post.save      
      redirect_to root_path, notice: 'Post was successfully created.'
    else      
      render :new, status: :unprocessable_entity
    end     
  end

  private
  def post_params    
    params.require(:post).permit(:title, :body, :photo)
  end
  
  

end
