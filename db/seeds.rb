# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

map = Map.create(name: "Map 1")
_first_challenge = Challenge.create(
    id: "first",
    title: "Challenge 1",
    premise: "¡Bienvenido al desafiante mundo de la programación espacial!
    En este emocionante primer reto, te convertirás en el
    controlador de vuelo del intrépido astronauta mientras navega
    por terrenos extraterrestres y supera obstáculos cósmicos.",
    tasks: "This is the first task",
    notes: "This is the first note",
    map: map
)
