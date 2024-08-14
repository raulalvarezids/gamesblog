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
    @post = @user.posts.create(post_params)
    if @post.valid?
      redirect_to root_path, notice: 'Post was successfully created.'
    else      
      render :new, status: :unprocessable_entity
    end     
  end



  def edit
    @post = Post.find(params[:id])    
  end
    
  def update 
    @post = Post.find(params[:id])        
      
    if post_params[:photo].present?
      @post.photo.purge
    end

    if @post.update(post_params)          
      redirect_to posts_path, notice: 'Post was successfully updated.'
    else        
      render :edit, status: :unprocessable_entity
    end        

  end


  private
  def post_params    
    params.require(:post).permit(:title, :body, :photo)
  end
  
  

end
