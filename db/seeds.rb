# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pet.delete_all
Shelter.delete_all

puts 'Cleaning database...'
User.delete_all

puts 'Creating users...'
users_attributes = [
  {
    name: 'Jim',
    description: 'Nice guy',
    phone_number: '0134567435',
    shelter_owner: true,
    email: "jim@gmail.com",
    password: 'foster',
    password_confirmation: 'foster'
  },
  {
    name: 'Jane',
    description: 'Shy girl',
    phone_number: '0634767435',
    shelter_owner: false,
    email: "jane@gmail.com",
    password: 'foster',
    password_confirmation: 'foster'
  },
  {
    name: 'Joe',
    description: 'Mean grandpa',
    phone_number: '0934548692',
    shelter_owner: true,
    email: "joe@gmail.com",
    password: 'foster',
    password_confirmation: 'foster'
  }
]
User.create!(users_attributes)
puts 'Finished!'

##############

puts 'Cleaning database...'


puts 'Creating shelters...'
shelters_attributes = [
  {
    name: 'Heavens door',
    address: 'Av. Álvaro Obregón 126, Roma Nte., 06700 Ciudad de México, CDMX, Mexico',
    phone_number: '0645367546',
    user: User.first
  },
  {
    name: 'Highway to Hell',
    address: 'Av Nuevo León 62, Condesa, 06140 Ciudad de México, CDMX, Mexico',
    phone_number: '0846354624',
    user: User.last
  }
]
Shelter.create!(shelters_attributes)
puts 'Finished!'

###############

puts 'Cleaning database...'


puts 'Creating pets...'
pets_attributes = [
  {
    name: 'Pancreas',
    age: 18,
    breed: 'golden retriver',
    size: 'small' ,
    sociability: 'high',
    status: 'available',
    activity_level: 'high',
    shelter: Shelter.first,
    photo: File.open('app/assets/images/dog1.jpg')
  },
  {
    name: 'Pizza',
    age: 5,
    breed: 'puddle',
    size: 'medium' ,
    sociability: 'low',
    status: 'available',
    activity_level: 'low',
    shelter: Shelter.last,
    photo: File.open('app/assets/images/dog2.jpg')
  },
  {
    name: 'Fatty',
    age: 18,
    breed: 'australian sheppard',
    size: 'big',
    sociability: 'high',
    status: 'available',
    activity_level: 'medium',
    shelter: Shelter.last,
    photo: File.open('app/assets/images/dog3.jpg')
  }
]
Pet.create!(pets_attributes)
puts 'Finished!'
