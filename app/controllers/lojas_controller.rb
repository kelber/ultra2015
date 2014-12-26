	class LojasController < ApplicationController
  
	before_action :set_estado
	before_action :set_cidade
	before_action :find_loja, only: [:show, :edit, :update, :destroy]


	def show
  end


  def new
  	@loja = Loja.new
  end
  
  def edit
  end

  def create
  	@loja = Loja.new(loja_params)
    @loja.cidade_id = @cidade.id
  	if @loja.save
  		redirect_to estados_path , notice: "Loja cadastrada com sucesso"
  	else	
  		render 'new'
  	end
  end

  def update
       @loja.cidade_id = @cidade.id
    if @loja.update(loja_params)
      
      redirect_to estados_path , notice: "Loja cadastrada com sucesso"
    else  
      render 'edit'
    end
  end

  def destroy
  	if @loja.destroy
  		redirect_to estados_path, notice: "Loja excluida com sucesso"
  	else
  		render 'show'
  	end
  end




  private

  def set_estado
  	@estado = Estado.find(params[:estado_id])
  end

  def set_cidade
  	@cidade = Cidade.find(params[:cidade_id])
  end

   def find_loja
    @loja = Loja.find(params[:id])
  end

  def loja_params
    params.require(:loja).permit(:name, :cidade_id, :endereco, :telefone, :email, :diretor, :mapa)
  end


end
