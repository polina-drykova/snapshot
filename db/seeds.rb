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
# email = Faker::Internet.email
# password = Faker::Beer.brand

puts 'Creating cameras...'
cameras_attributes = [
  {
    name:           'Beauty dish',
    address:        Faker::Address.full_address,
    description:    'Small reflector used primarily for close-up lighting of female faces to increase light fallout while retaining softness.',
    policies:       'Deposit $5',
    price_per_day:  5,
    photo:          '../app/assets/images/beauty_dish.jpeg',
    user_id:        1
  },
  {
    name:           'Canon Powershot Elph 190is',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  10,
    photo:          '../app/assets/images/camera.jpeg',
    user_id:        1
  },
  {
    name:           'Kleig light',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  13,
    photo:          '../app/assets/images/kleig light.jpeg',
    user_id:        1
  },
  {
    name:           'Photo studio set',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/photo-studio-set.jpeg',
    user_id:        1
  },
  {
    name:           'Canon lens',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/canon_lens.jpeg',
    user_id:        2
  },
    {
    name:           'Camera bag',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  2,
    photo:          '../app/assets/images/camera_bag.jpeg',
    user_id:        2
  },
    {
    name:           'Godox S-Type bracket Bowens mount',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/Godox S-Type bracket Bowens mount.jpeg',
    user_id:        1
  },
    {
    name:           'Lens',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  6,
    photo:          '../app/assets/images/lens.jpeg',
    user_id:        1
  },
    {
    name:           'Red Flare',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/red_flare.jpeg',
    user_id:        1
  },
    {
    name:           'Canon EOS Rebel T6i',
    address:        Faker::Address.full_address,
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    photo:          '../app/assets/images/canon.jpeg',
    user_id:        1
  },
]
Camera.create!(cameras_attributes)
puts 'Cameras are finished!'
