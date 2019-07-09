# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Wig.destroy_all
User.destroy_all
max = User.create(email:'max@test.com', password:'testword')
louis = User.create(email:'louis@test.com', password:'testword')
stan = User.create(email:'stan@test.com', password:'testword')
Wig.create(user_id: max.id, description:'funky', price: 15, color:'green', size:'m', title: 'kordula grün')
Wig.create(user_id: louis.id, description:'boring', price: 15, color:'brown', size:'xl', title: 'walters deckel')

