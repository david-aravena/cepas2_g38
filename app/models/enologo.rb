class Enologo < ApplicationRecord
    has_many :enologo_vinos
    has_many :vinos, through: :enologo_vinos 
end
