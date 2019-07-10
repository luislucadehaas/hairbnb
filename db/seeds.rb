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
Wig.create(user_id: max.id, description:'This is the most piraty wig of all piraty wigs. Yo will feel like a badass pirate if you rock this pirating wig.  Happy pirating!', price: 40, color:'black', size:'m', title: 'Jacky Sparowsi', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752188/U36167_bw2g2b.jpg')
Wig.create(user_id: louis.id, description:'Make yourself the diva you always wanted to be. With this natural feeling look you will rock any party! ', price: 5000, color:'blonde', size:'m', title: 'Marys Madness', photo: '')
Wig.create(user_id: louis.id, description:'How often do experts say you should listen to Bob Marley? Reggae-larly. Any other qustions? No? We thought so.', price: 2, color:'black', size:'xl', title: 'Bobbys Bop', photo: '')
Wig.create(user_id: max.id, description:'This is the most piraty wig of all piraty wigs. Yo will feel like a badass pirate if you rock this pirating wig.  Happy pirating!', price: 40, color:'black', size:'m', title: 'Jacky Sparowsi', photo: '')

