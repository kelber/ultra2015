class VehicleBrandsController < ApplicationController

	before_action :find_vehicle_brand , only: [:show]

	def index
		@vehicle_brands = VehicleBrand.all.order("name ASC")
	end


	def new
		@vehicle_brand = VehicleBrand.new
	end

	def create
		@vehicle_brand = VehicleBrand.new(vehicle_brand_params)
		if @vehicle_brand.save
			redirect_to @vehicle_brand, notice: "Marca cadastrada com sucesso"
		else
		render 'new'
		end
	end

	private

	def find_vehicle_brand
		@vehicle_brand = VehicleBrand.find(params[:id])
	end

	def vehicle_brand_params
		params.require(:vehicle_brand).permit(:name)
	end

end
