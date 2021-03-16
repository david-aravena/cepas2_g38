class AddPorcentajeToVinoCepas < ActiveRecord::Migration[5.2]
  def change
    add_column :vino_cepas, :porcentaje, :string
  end
end
