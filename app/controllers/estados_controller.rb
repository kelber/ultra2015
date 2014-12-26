class EstadosController < ApplicationController

	before_action :find_estado, only: [:show, :edit, :update, :destroy] 


	def index
		@estados = Estado.all
	end

	def show
		  @estado = Estado.find(params[:id])
      @cidades = @estado.cidades.order("name ASC")
	end

	def new
		@estado = Estado.new
	end

	def edit
	end

	def create
		@estado = Estado.new(estado_params)
		if @estado.save
			redirect_to @estado , notice: "Cadastrado com Sucesso"
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
		if @estado.destroy
			redirect_to estados_path, notice: "Exclusao com sucesso"
		end
	end

	private

	def find_estado
		@estado = Estado.find(params[:id])
	end	

	def estado_params
		params.require(:estado).permit(:name)
	end	













end
