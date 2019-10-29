# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Cleaning database...'
# Camera.destroy_all

require 'faker'

puts 'Creating users...'
user_attributes = [
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
  {
    email:      Faker::Internet.email,
    password:    'password'
},
]

User.create(user_attributes)



description = Faker::Lorem.paragraphs(rand(1..2)).join('\n')
policies = Faker::Lorem.paragraphs(rand(1..2)).join('\n')
price_per_day = (rand(50..150))
email = Faker::Internet.email
password = Faker::Beer.brand

puts 'Creating cameras...'
cameras_attributes = [
  {
    name:           'Nikon Coolpix A300',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
  {
    name:           'Canon Powershot Elph 190is',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
  {
    name:           'Canon Powershot SX540',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
  {
    name:           'Panasonic Lumix ZS50',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
  {
    name:           'Olympus Stylus 1s',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
    {
    name:           'Canon PowerShot G3X',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
    {
    name:           'Sony RX100 IV',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
    {
    name:           'Nikon Coolpix AW130',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
    {
    name:           'Olympus TG-870',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
    {
    name:           'Canon EOS Rebel T6i',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/cameraphoto.jpeg',
    user: User.all.sample
  },
]
Camera.create!(cameras_attributes)
puts 'Cameras are finished!'

