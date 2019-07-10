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
Wig.create(user_id: max.id, description:'This is the most piraty wig of all piraty wigs. You will feel like a badass pirate if you rock this pirating wig.  Happy pirating!', price: 40, color:'black', size:'M', title: 'Jacky Sparowsi', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752188/U36167_bw2g2b.jpg')
Wig.create(user_id: louis.id, description:'Make yourself the diva you always wanted to be. With this natural feeling look you will rock any party!', price: 5000, color:'blonde', size:'M', title: 'Marys Madness', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752180/42206_oy82g0.jpg')
Wig.create(user_id: louis.id, description:'How often do experts say you should listen to Bob Marley? Reggae-larly. Any other qustions? No? We thought so.', price: 2, color:'black', size:'XL', title: 'Bobbys Bop', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/29002-rasta-beret-w-real-dreadlocks-1_ertyy0.jpg')
Wig.create(user_id: max.id, description:'You feel dumb? We have a fix for that. Become the brigtest person in any room with our Albret wig!', price: 50, color:'white', size:'L', title: 'Albert Stein', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/70796_E_MC2_qqtzi5.jpg')
Wig.create(user_id: stan.id, description:'Find your inner Pamela with our top notch Pamela Wig! Pamela it all the way.', price: 100, color:'blonde', size:'XS', title: 'Pamela', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/42225_jcpkpw.jpg')
Wig.create(user_id: stan.id, description:'Its the greatest wig the world has ever seen. All other Wigs are for loosers.', price: 100, color:'blonde', size:'L', title: 'The Greatest Wig', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/77394-1_bkuhgh.jpg')
Wig.create(user_id: louis.id, description:'Feel the flow with Elvis. Chesthair is not inclouded.', price: 35, color:'black', size:'XL', title: 'Elvis', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/BW071_vb4l3v.jpg')
Wig.create(user_id: max.id, description:'!!Caution!! You might wake up in Vegas. Vegas Baby!', price: 100000, color:'brown', size:'L', title: 'Hangover', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/5418-3_urujqj.jpg')
Wig.create(user_id: stan.id, description:'Not as beautiful as Heidi. But still a Heidi.', price: 100000, color:'brown', size:'S', title: 'Heid', photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/42247_vdqww0.jpg')

