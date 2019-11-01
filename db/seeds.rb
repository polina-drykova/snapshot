# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Camera.destroy_all
Booking.destroy_all
User.destroy_all


require 'faker'

 puts 'Creating users...'
 user_attributes = [

  {
    email:      'polina@gmail.com',
    password:    '1234567',
    name: 'Polina',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'eric@gmail.com',
    password:    '1234567',
    name: 'Eric',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'sacha@gmail.com',
    password:    '1234567',
    name: 'Sacha',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'sebastian@gmail.com',
    password:    '1234567',
    name: 'Sebastian',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1145&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
 ]

User.create!(user_attributes)



description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
policies = 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
price_per_day = (rand(5..20))
rating = (rand(1...5))


puts 'Creating listings...'
cameras_attributes = [
  {
    name:           'Beauty dish',
    address:        '1300 Kenyon Street Northwest, Washington, District of Columbia, United States of America',
    description:    'Small reflector used primarily for close-up lighting of female faces to increase light fallout while retaining softness.',
    policies:       'Deposit $5',
    price_per_day:  5,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
  {
    name:           'Canon Powershot Elph 190is',
    address:        '1600 Pennsylvania Avenue, Washington, District of Columbia',
    description:    description,
    policies:       policies,
    price_per_day:  10,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
  {
    name:           'Kleig light',
    address:        '1200 Girard Street Northeast, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  13,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
  {
    name:           'Photo studio set',
    address:        '1345 Riggs Street NW, Washington DC',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    user_id:        User.first.id,
    category: Camera::CATEGORY.sample
  },
  {
    name:           'Canon lens',
    address:        '1200 Euclid Street Northwest, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.last.id,
    category: Camera::CATEGORY.sample
  },
    {
    name:           'Camera bag',
    address:        '1300 Irving Street Northeast, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  2,

    user_id:        User.last.id,

    category: Camera::CATEGORY.sample
  },
    {
    name:           'Godox S-Type bracket Bowens mount',
    address:        '500 K St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
    {
    name:           'Lens',
    address:        '500 L St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,
    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
    {
    name:           'Red Flare',
    address:        '500 L St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
    {
    name:           'Canon EOS Rebel T6i',
    address:        '2228 18th St NW, Washington, DC 20009',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
]

cameras_attributes.each do |f|

  camera = Camera.create!(f)
  Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1514916726007-68847f06dd03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')
  Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1513652990199-8a52e2313122?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1560264245-1dbfb9782b8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
  Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
end

puts 'Listings are finished!'

puts 'Creating bookings...'
booking_attributes = [
  {
   rental_date:    Date.today,
   return_date:    Date.today + 3,
   total_price:    83,
   service_fee:    5,
   user_id:        User.first.id,
   camera_id:      5
  },
    {
   rental_date:    Date.today,
   return_date:    Date.today + 5,
   total_price:    101,
   service_fee:    6,
   user_id:        User.last.id,
   camera_id:      3
  },
]
Booking.create!(booking_attributes)
puts 'Bookings are finished!'

puts 'Creating reviews...'
reviews_attributes = [
  {
   content:    description,
   rating:     rating,
   booking_id:    1,
  },
    {
   content:    description,
   rating:     rating,
   booking_id:    2,
  },
  {
   content:    description,
   rating:     rating,
   booking_id:    1,
  },
  {
   content:    description,
   rating:     rating,
   booking_id:    1,
  },
  {
   content:    description,
   rating:     rating,
   booking_id:    2,
  },
]
Review.create!(reviews_attributes)
puts 'Reviews are finished!'

