class CepasController < ApplicationController
  def update
    @cepa = Cepa.find(params[:cepa][:id])
    @cepa.update(cepa_params)
    redirect_to vinos_path
  end

  private

  def cepa_params
    params.require(:cepa).permit(:nombre)
  end
end
