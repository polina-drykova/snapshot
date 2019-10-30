# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#puts 'Cleaning database...'
#Camera.destroy_all


require 'faker'

 puts 'Creating users...'
 user_attributes = [
  {
    email:      'polina@gmail.com',
    password:    '1234567',
    name: 'Polina',
    address: "Canggu, Bali",
  #  remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'eric@gmail.com',
    password:    '1234567',
    name: 'Eric',
    address: "Canggu, Bali",
   # remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
 ]

User.create(user_attributes)


description = Faker::Lorem.paragraphs(rand(1..2)).join('\n')
policies = Faker::Lorem.paragraphs(rand(1..2)).join('\n')
price_per_day = (rand(50..150))
# email = Faker::Internet.email
# password = Faker::Beer.brand

puts 'Creating listings...'
cameras_attributes = [
  {
    name:           'Beauty dish',
    address:        '1300 Kenyon Street Northwest, Washington, District of Columbia, United States of America',
    description:    'Small reflector used primarily for close-up lighting of female faces to increase light fallout while retaining softness.',
    policies:       'Deposit $5',
    price_per_day:  5,
    remote_photo_url:          'https://images.unsplash.com/photo-1514916726007-68847f06dd03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    user_id:        1
  },
  {
    name:           'Canon Powershot Elph 190is',
    address:        '1600 Pennsylvania Avenue, Washington, District of Columbia',
    description:    description,
    policies:       policies,
    price_per_day:  10,
    remote_photo_url:          'https://images.unsplash.com/photo-1513652990199-8a52e2313122?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    user_id:        1
  },
  {
    name:           'Kleig light',
    address:        '1200 Girard Street Northeast, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  13,
    remote_photo_url:          'https://images.unsplash.com/photo-1560264245-1dbfb9782b8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:        1
  },
  {
    name:           'Photo studio set',
    address:        '1345 Riggs Street NW, Washington DC',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    remote_photo_url:          'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:        1
  },
  {
    name:           'Canon lens',
    address:        '1200 Euclid Street Northwest, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    remote_photo_url:          'https://images.unsplash.com/photo-1499932250142-44551dc71869?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
    user_id:        2
  },
    {
    name:           'Camera bag',
    address:        '1300 Irving Street Northeast, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  2,
    remote_photo_url:          'https://images.unsplash.com/photo-1544141161-30fef2b4ba6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80',
    user_id:        2
  },
    {
    name:           'Godox S-Type bracket Bowens mount',
    address:        '500 K St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    remote_photo_url:          'https://images.unsplash.com/photo-1541637797746-5bb9a4490f79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:        1
  },
    {
    name:           'Lens',
    address:        '500 L St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  6,
    remote_photo_url:          'https://images.unsplash.com/photo-1517701657121-79aa5abde62c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:        1
  },
    {
    name:           'Red Flare',
    address:        '500 L St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    remote_photo_url:          'https://images.unsplash.com/photo-1497809750169-a1f3e2b7d06c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1583&q=80',
    user_id:        1
  },
    {
    name:           'Canon EOS Rebel T6i',
    address:        '2228 18th St NW, Washington, DC 20009',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    remote_photo_url:          'https://images.unsplash.com/photo-1519183071298-a2962feb14f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    user_id:        1
  },
]
Camera.create!(cameras_attributes)
puts 'Listings are finished!'

puts 'Creating bookings...'
booking_attributes = [
  {
   rental_date:    Date.today,
   return_date:    Date.today + 3,
   total_price:    83,
   service_fee:    5,
   user_id:        1,
   camera_id:      5
  },
    {
   rental_date:    Date.today,
   return_date:    Date.today + 5,
   total_price:    101,
   service_fee:    6,
   user_id:        2,
   camera_id:      3
  },
]
Booking.create!(booking_attributes)
puts 'Bookings are finished!'


