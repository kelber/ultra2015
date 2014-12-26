class CidadesController < ApplicationController
 
	before_action :find_estado
	before_action :find_cidade, only: [:show, :edit, :update, :destroy] 


  def show
  end

  def new
  	@cidade = Cidade.new
  end

  def create
  	@cidade = Cidade.new(cidade_params)
  	@cidade.estado_id = @estado.id
  	if @cidade.save
  		redirect_to @estado, notice: "Cidade cadastrada com sucesso"
  	else
  		render 'new'
  	end
  end

  def destroy
  	if @cidade.destroy
  		redirect_to @estado, notice: "Cidade excluida com sucesso"
  	else
  		render 'show'
  	end
  end



  private

  def find_estado
  	@estado = Estado.find(params[:estado_id])
  end

  def find_cidade
  	@cidade = Cidade.find(params[:id])
  end

  def cidade_params
  	params.require(:cidade).permit(:name, :estado_id)
  end



end
