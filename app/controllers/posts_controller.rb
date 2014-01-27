class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	#future search implementation:
    #@search = Post.search(params[:q])
    #@posts = @search.result
  end


  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    	flash[:success] = "Post successful!"
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def post_params
      params.require(:post).permit(:email, :phone, :time, :pickupdate, :cartype) #add in :date after it's been sorted out. add in validations too.
  end

end