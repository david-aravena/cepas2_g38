# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


VinoCepa.destroy_all
EnologoVino.destroy_all
Cepa.destroy_all
Vino.destroy_all
Enologo.destroy_all

Cepa.create(
    [
        {
            nombre: 'chardonnay'
        },
        {
            nombre: 'merlot'
        },
        {
            nombre: 'syrah'
        },
        {
            nombre: 'carmenere'
        }
    ]
)

Enologo.create(
    [
        {
            name: 'rube'
        },
        {
            name:"sode"
        },
        {
            name:"yade"
        }
    ]
);

User.create(
    [
        {
            name: 'peter',
            password_digest: 'peter'
        }
    ]
)