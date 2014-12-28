class PostCategoriesController < ApplicationController
 

	before_action :find_post_category, only: [:show, :edit, :update, :destroy] 


  def index
  	@post_categories = PostCategory.all.order("created_at DESC")
  end

  def show
  end

  def new
  	@post_category = PostCategory.new
  end

  def create
  	@post_category = PostCategory.new(post_category_params)
  	if @post_category.save
  		redirect_to @post_category, notice: "Post cadastrado com sucesso"
  	else
  		render 'new'
  	end
  end



  def edit
  end

  def update
  	if @post_category.update(post_category_params)
  		redirect_to @post_category, notice: "Atualizado com sucesso"
  	else
  		render 'edit'
  	end
  end

  def destroy
  	if @post_category.destroy
  		redirect_to post_categories_path , notice: "Excluido com sucesso"
  	else
  		render 'show'
  	end
  end

  private

  def find_post_category
  	@post_category = PostCategory.find(params[:id])
  end

  def post_category_params
  	params.require(:post_category).permit(:name)
  end	




end
