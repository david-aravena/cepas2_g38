class ChangeTypePorcentajeCepa < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :vino_cepas, :porcentaje_cepa, :string 
    end 
   
   def down
    change_column :vino_cepas, :porcentaje_cepa, :integer

   end
     
  end
end

