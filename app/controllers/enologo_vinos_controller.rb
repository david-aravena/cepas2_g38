class EnologoVinosController < ApplicationController
  def update
    @enologo_vino = EnologoVino.find_by(
      vino_id: params[:enologo_vino][:vino_id],
      enologo_id: params[:enologo_vino][:enologo_id],
      nota: params[:enologo_vino][:nota]
    )

    if @enologo_vino.present?
      @enologo_vino.update(enologo_vino_params)
      redirect_to vinos_path
    else
      @nueva_nota = EnologoVino.new(enologo_vino_params)
      @nueva_nota.save
      redirect_to vinos_path
    end
  end

  private

  def enologo_vino_params
    params.require(:enologo_vino).permit(:enologo_id, :vino_id, :nota)
  end
end
