class VehicleNamesController < ApplicationController

  before_action :set_vehicle_brand 
  before_action :find_vehicle_name , only: [:show, :destroy]


  def show

  end

  def new
    @vehicle_brand = VehicleBrand.find(params[:vehicle_brand_id])
    @vehicle_name = VehicleName.new
  end


   def create
    @vehicle_name = VehicleName.new(vehicle_name_params)
    @vehicle_name.vehicle_brand_id = @vehicle_brand.id
    if @vehicle_name.save
      flash[:notice] = "Cadastrado com sucesso"
      redirect_to @vehicle_brand
    else
      render 'new'
    end
  end

  def destroy
     if @vehicle_name.destroy
      redirect_to @vehicle_brand, notice: "Veiculo excluido com sucesso"
    else
      render @vehicle_brand
    end
  end


  private

  def set_vehicle_brand
    @vehicle_brand = VehicleBrand.find(params[:vehicle_brand_id])
  end


  def find_vehicle_name
    @vehicle_name = VehicleName.find(params[:id])
  end


  def vehicle_name_params
    params.require(:vehicle_name).permit(:name, :vehicle_brand_id, :year, :obs)
  end








end
