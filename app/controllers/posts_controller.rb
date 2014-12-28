class PostsController < ApplicationController
  
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
     @posts = Post.all.order("created_at DESC")     
 end

  def show
  end

   def edit
  end

  def new
  	@post = Post.new
  end
 
  def create
	@post = Post.new(post_params)
	if @post.save
		redirect_to @post, notice: "Post salvo com sucesso" 
	else
	  	render 'new'
	end
  end
	

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post atualizado com sucesso" 
    else
      render ' edit' 
    end
  end


  def destroy
    if @post.destroy
      redirect_to posts_path , notice: "Deletado com sucesso" 
    else 
      render 'show' 
    end
  end

 



 private

 def find_post
	@post = Post.find(params[:id])
 end

 def post_params
	params.require(:post).permit(:post_category_id, :title, :post)
 end




end
