class Vino < ApplicationRecord
    has_many :vino_cepas
    has_many :cepas, through: :vino_cepas
    validates_uniqueness_of :nombre
    validates :nombre, presence: true



    has_many :enologo_vinos
    has_many :enologos, through: :enologo_vinos 

end
