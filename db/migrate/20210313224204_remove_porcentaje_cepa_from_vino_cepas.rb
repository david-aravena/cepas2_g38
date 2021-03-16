class RemovePorcentajeCepaFromVinoCepas < ActiveRecord::Migration[5.2]
  def change
    remove_column :vino_cepas, :porcentaje_cepa, :integer
  end
end
