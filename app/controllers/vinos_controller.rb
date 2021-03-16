class VinosController < ApplicationController
  def index
    @vino = Vino.new
    @vinos = Vino.all
    @cepas = Cepa.all
  end

  def create
    @vino = Vino.new(vino_params)
    if @vino.save 
      params[:vino][:cepa_ids].each do |i|
        @vino_cepa = VinoCepa.new(cepa_id: i, vino_id: @vino.id)
        @vino_cepa.save
      end
      redirect_to root_path
    else  
      flash[:alert] = "Error al guardar. Asegurese de que el vino ingresado no exista y que haya escrito un nombre de vino"
      redirect_to root_path
    end
  end

  def update
    @registro = VinoCepa.find(params[:id])
    @registro.update(vino_cepa_params)
    redirect_to root_path
  end

  private

  def vino_params
    params.require(:vino).permit(:nombre, porcentaje_cepa: [:id])
  end

  def vino_cepa_params
    params.permit(:porcentaje)
  end
end