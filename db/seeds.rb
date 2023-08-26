# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


first_challenge = Challenge.new(
    id: 1,
    code: "first",
    title: "Challenge 1",
    intro: "En este emocionante primer reto, te convertirás en el controlador de vuelo del intrépido astronauta mientras se desplaza por una avanzada plataforma espacial y supera obstáculos cósmicos.",
    premise: "Imagina que tu intrépido astronauta se encuentra en lo más profundo del espacio, en una plataforma de investigación en órbita alrededor de un misterioso planeta. Tu misión es dirigirlo desde su punto de partida hasta el computador de mando ubicado a la derecha de la plataforma.",
    tasks: "A medida que el astronauta recorre la plataforma, se encontrará con contenedores sellados. Estos contenedores albergan suministros esenciales para su supervivencia en el espacio, pero también podrían contener sustancias tóxicas. Tendrás la capacidad de programar las acciones del astronauta para que él decida si abre estos contenedores.",
    notes: "¡El éxito de la misión dependerá de tus elecciones y de tus habilidades."
)
first_challenge.save
puts "Error: #{first_challenge.errors.full_messages}"

map1_data = {
    :collitions=>[
        [0, 0, 191, 201, 193, 0, 0],
        [248, 189, 230, 224, 232, 0, 0],
        [0, 0, 230, 0, 230, 0, 0],
        [0, 0, 230, 0, 260, 258, 202],
        [0, 0, 230, 0, 292, 286, 232],
        [0, 0, 230, 0, 0, 0, 232],
        [0, 0, 230, 0, 200, 201, 262],
        [0, 0, 230, 0, 232, 463, 463],
        [0, 0, 230, 0, 232, 0, 0],
        [248, 189, 230, 0, 232, 0, 0],
        [0, 0, 251, 261, 262, 0, 0],
        [0, 0, 464, 464, 464, 0, 0]
    ],
    :ground=>[
        [0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 304, 304, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 304, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0]
    ],
    :boxes=>[],
    :objects=>[
        {
            :height=>60, 
            :id=>1, 
            :name=>"Player", 
            :width=>60, :x=>195, :y=>704
        }, 
        {
            :height=>60.2112328496694, 
            :id=>2,
            :name=>"Goal", 
            :width=>58.237094067713, :x=>320, :y=>320
        }
    ]
}

map = Map.create(name: "Map 1", data: map1_data.to_json, challenge_id: first_challenge.id)

puts "Error: #{map.errors.full_messages}"