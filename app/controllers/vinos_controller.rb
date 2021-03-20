class VinosController < ApplicationController
  before_action :autenticar


  def index
    @enologo_vino = EnologoVino.new
    @vino = Vino.new
    @cepa = Cepa.new
    @vinos = Vino.all
    @cepas = Cepa.all
    @enologo_vino = EnologoVino.all
    @yo = User.find(session[:user_id])
  end

  def create
    @vino = Vino.new(vino_params)
    if @vino.save 
      params[:vino][:cepa_ids].each do |i|
        @vino_cepa = VinoCepa.new(cepa_id: i, vino_id: @vino.id)
        @vino_cepa.save
      end
      redirect_to vinos_path
    else  
      flash[:alert] = "Error al guardar. Asegurese de que el vino ingresado no exista y que haya escrito un nombre de vino"
      redirect_to vinos_path
    end
  end

  def update
    if params[:vino]
      @vino = Vino.find(params[:vino][:id])
      @vino.update(vino_params)
      redirect_to vinos_path
    else
      @registro = VinoCepa.find(params[:id])
      @registro.update(vino_cepa_params)
      redirect_to vinos_path
    end
  end

  private

  def vino_params
    params.require(:vino).permit(:nombre, porcentaje_cepa: [:id])
  end

  def vino_cepa_params
    params.permit(:porcentaje)
  end

  def autenticar
    if !session[:user_id]
      redirect_to root_path
    end
  end
end