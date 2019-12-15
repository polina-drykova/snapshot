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
    remote_avatar_url: 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=639&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'sacha@gmail.com',
    password:    '1234567',
    name: 'Sacha',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
  {
    email:      'sebastian@gmail.com',
    password:    '1234567',
    name: 'Sebastian',
    address: "Canggu, Bali",
    remote_avatar_url: 'https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
    about_me: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  },
 ]

User.create!(user_attributes)



description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
policies = 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
price_per_day = (rand(5..12))
rating = (rand(1...5))


puts 'Creating listings...'
cameras_attributes = [
  {
    name:           'Minolta XG9',
    address:        '1600 Pennsylvania Avenue, Washington, District of Columbia',
    description:    description,
    policies:       policies,
    price_per_day:  9,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
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
    name:           'Canon lens',
    address:        '1200 Euclid Street Northwest, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.last.id,
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
    name:           'Canon EF Lens',
    address:        '2228 18th St NW, Washington, DC 20009',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
    {
    name:           'Canon EOS 6D',
    address:        '500 K St SE, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  price_per_day,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
  {
    name:           'Light set',
    address:        '1200 Girard Street Northeast, Washington, District of Columbia, United States of America',
    description:    description,
    policies:       policies,
    price_per_day:  13,

    user_id:        User.first.id,

    category: Camera::CATEGORY.sample
  },
   {
   name:           'Mavic Pro',
   address:        '1300 Irving Street Northeast, Washington, District of Columbia, United States of America',
   description:    description,
   policies:       policies,
   price_per_day:  2,

   user_id:        User.last.id,

   category: Camera::CATEGORY.sample
 },
    {
    name:           'Canon AE-1',
    address:        '500 L St SE, Washington, District of Columbia, United States of America',
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
]


cameraphotos_attributes = [
  {
    camera_id: 1,
    photo: 'https://images.unsplash.com/photo-1470117144297-a67b448680bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 1,
    photo: 'https://images.unsplash.com/photo-1470116109808-c71d8bd6f4a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 1,
    photo: 'https://images.unsplash.com/photo-1481299490292-adef25f13c3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 2,
    photo: 'https://images.unsplash.com/photo-1514916726007-68847f06dd03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80'
  },

  {
    camera_id: 3,
    photo: 'https://images.unsplash.com/photo-1523467327888-a8a445992901?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 3,
    photo: 'https://images.unsplash.com/photo-1506241537529-eefea1fbe44d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 4,
    photo: 'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'
  },
  {
    camera_id: 4,
    photo: 'https://images.unsplash.com/photo-1557860854-b1caab07f23c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80'
  },
  {
    camera_id: 5,
    photo: 'https://images.unsplash.com/photo-1554926631-9f5ee29919d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80'
  },
  {
    camera_id: 6,
    photo: 'https://images.unsplash.com/photo-1548502499-ef49e8cf98d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 7,
    photo: 'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'
  },
  {
    camera_id: 7,
    photo: 'https://images.unsplash.com/photo-1506917629166-2a1e0e2c78aa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 8,
    photo: 'https://images.unsplash.com/photo-1512433457759-6222e69eade9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=922&q=80'
  },
  {
    camera_id: 8,
    photo: 'https://images.unsplash.com/photo-1541390701501-4eb44002b119?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 9,
    photo: 'https://images.unsplash.com/photo-1483932981361-26ddd9a5d30a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 9,
    photo: 'https://images.unsplash.com/photo-1455321803702-557b68a4941b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 10,
    photo: 'https://images.unsplash.com/photo-1423935645335-eff327cd5d96?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
  },
  {
    camera_id: 10,
    photo: 'https://images.unsplash.com/photo-1524346920309-e971bd563601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1968&q=80'
  },
]

Camera.create!(cameras_attributes)
puts 'Cameras are finished'
Cameraphoto.create!(cameraphotos_attributes)
puts 'Photos are finished'
# cameras_attributes.each do |f|

#   camera = Camera.create!(f)
#   Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1514916726007-68847f06dd03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')
#   Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1513652990199-8a52e2313122?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
#   Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1560264245-1dbfb9782b8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
#   Cameraphoto.create!(camera: camera, photo: 'https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
# end

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
  {
   rental_date:    Date.today,
   return_date:    Date.today + 7,
   total_price:    45,
   service_fee:    6,
   user_id:        3,
   camera_id:      1
  },
  {
   rental_date:    Date.today,
   return_date:    Date.today + 2,
   total_price:    11,
   service_fee:    1,
   user_id:        4,
   camera_id:      2
  },
  {
   rental_date:    Date.today + 20,
   return_date:    Date.today + 30,
   total_price:    40,
   service_fee:    4,
   user_id:        1,
   camera_id:      4
  },
    {
   rental_date:    Date.today + 34,
   return_date:    Date.today + 35,
   total_price:    66,
   service_fee:    4,
   user_id:        2,
   camera_id:      6
  },
    {
   rental_date:    Date.today + 36,
   return_date:    Date.today + 40,
   total_price:    55,
   service_fee:    4,
   user_id:        3,
   camera_id:      7
  },
    {
   rental_date:    Date.today + 41,
   return_date:    Date.today + 45,
   total_price:    42,
   service_fee:    4,
   user_id:        4,
   camera_id:      10
  },
    {
   rental_date:    Date.today + 46,
   return_date:    Date.today + 55,
   total_price:    35,
   service_fee:    4,
   user_id:        1,
   camera_id:      9
  },
    {
   rental_date:    Date.today + 60,
   return_date:    Date.today + 65,
   total_price:    105,
   service_fee:    4,
   user_id:        2,
   camera_id:      9
  },
    {
   rental_date:    Date.today + 70,
   return_date:    Date.today + 75,
   total_price:    120,
   service_fee:    4,
   user_id:        3,
   camera_id:      9
  },
    {
   rental_date:    Date.today + 34,
   return_date:    Date.today + 35,
   total_price:    170,
   service_fee:    4,
   user_id:        4,
   camera_id:      7
  },
    {
   rental_date:    Date.today + 25,
   return_date:    Date.today + 35,
   total_price:    60,
   service_fee:    4,
   user_id:        2,
   camera_id:      4
  },
    {
   rental_date:    Date.today + 10,
   return_date:    Date.today + 15,
   total_price:    55,
   service_fee:    4,
   user_id:        1,
   camera_id:      3
  },
    {
   rental_date:    Date.today + 10,
   return_date:    Date.today + 15,
   total_price:    70,
   service_fee:    4,
   user_id:        4,
   camera_id:      1
  },
]
Booking.create!(booking_attributes)
puts 'Bookings are finished!'

puts 'Creating reviews...'
reviews_attributes = [
  {
   content:    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
   rating:     (rand(1...5)),
   booking_id:    1,
  },
    {
   content:    'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
   rating:     (rand(1...5)),
   booking_id:    2,
  },
  {
   content:    'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',
   rating:     (rand(1...5)),
   booking_id:    3,
  },
  {
   content:    'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.',
   rating:     (rand(1...5)),
   booking_id:    4,
  },
  {
   content:    'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.',
   rating:     (rand(1...5)),
   booking_id:    5,
  },
    {
   content:    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.',
   rating:     (rand(1...5)),
   booking_id:    6,
  },
    {
   content:    'Et harum quidem rerum facilis est et expedita distinctio.',
   rating:     (rand(1...5)),
   booking_id:    7,
  },
    {
   content:    'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.',
   rating:     (rand(1...5)),
   booking_id:    8,
  },
    {
   content:    'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.',
   rating:     (rand(1...5)),
   booking_id:    9,
  },
    {
   content:    'Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.',
   rating:     (rand(1...5)),
   booking_id:    10,
  },
    {
   content:    'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.',
   rating:     (rand(1...5)),
   booking_id:    11,
  },
    {
   content:    'Et harum quidem rerum facilis est et expedita distinctio.',
   rating:     (rand(1...5)),
   booking_id:    12,
  },
    {
   content:    'Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.',
   rating:     (rand(1...5)),
   booking_id:    13,
  },
    {
   content:    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.',
   rating:     (rand(1...5)),
   booking_id:    14,
  },
    {
   content:    'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.',
   rating:     (rand(1...5)),
   booking_id:    15,
  },
]
Review.create!(reviews_attributes)
puts 'Reviews are finished!'

