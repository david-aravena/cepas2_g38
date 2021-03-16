class CreateVinoCepas < ActiveRecord::Migration[5.2]
  def change
    create_table :vino_cepas do |t|
      t.references :cepa, foreign_key: true
      t.references :vino, foreign_key: true
      t.integer :porcentaje_cepa

      t.timestamps
    end
  end
end
