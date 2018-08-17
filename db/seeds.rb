# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all pools."
Pool.destroy_all
User.destroy_all

puts "Create users..."


user = User.create(email: 'fabian.bitta@gmail.com', password: '123456', remote_photo_url: "")

puts "Created #{User.count} users"


puts "Creating pools..."

pools = Pool.create([
{
  title: 'Badeschiff',
  address: 'Eichenstraße 4, 12435 Berlin',
  price: '4',
  capacity: '200',
  category: 'outdoor',
  description: '1. The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Olympiadbad',
  address: 'Olympischer Platz 3, 14053 Berlin',
  price: '7.5',
  capacity: '1000',
  category: 'outdoor',
  description: '1. Cool off in the cold-water pool inside. And leave all your cares behind – between sauna sessions or at the end of a sauna visit – in the relaxation room with its aquarium. There is special focus on this in the sanarium (around 60° C) with “aqua viva” colored light and sound simulation as well as birdsong and sounds of nature.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Stadtbad Neukölln',
  address: 'Ganghoferstraße 3, 12043 Berlin',
  price: '1.5',
  capacity: '25',
  category: 'indoor',
  description: '1. With its opening in 1914, the public pool was already considered to be among Europe’s most beautiful pools.',
  length: '12.5',
  depth: '1.5',
  width: '5',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Badeschiff',
  address: 'Eichenstraße 5, 12435 Berlin',
  price: '4',
  capacity: '200',
  category: 'outdoor',
  description: '2. The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Olympiadbad',
  address: 'Olympischer Platz 4, 14053 Berlin',
  price: '7.5',
  capacity: '1000',
  category: 'outdoor',
  description: '2. Cool off in the cold-water pool inside. And leave all your cares behind – between sauna sessions or at the end of a sauna visit – in the relaxation room with its aquarium. There is special focus on this in the sanarium (around 60° C) with “aqua viva” colored light and sound simulation as well as birdsong and sounds of nature.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Stadtbad Neukölln',
  address: 'Ganghoferstraße 4, 12043 Berlin',
  price: '1.5',
  capacity: '25',
  category: 'indoor',
  description: '2. With its opening in 1914, the public pool was already considered to be among Europe’s most beautiful pools.',
  length: '12.5',
  depth: '1.5',
  width: '5',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Badeschiff',
  address: 'Eichenstraße 6, 12435 Berlin',
  price: '4',
  capacity: '200',
  category: 'outdoor',
  description: '3. The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Olympiadbad',
  address: 'Olympischer Platz 5, 14053 Berlin',
  price: '7.5',
  capacity: '1000',
  category: 'outdoor',
  description: '3. Cool off in the cold-water pool inside. And leave all your cares behind – between sauna sessions or at the end of a sauna visit – in the relaxation room with its aquarium. There is special focus on this in the sanarium (around 60° C) with “aqua viva” colored light and sound simulation as well as birdsong and sounds of nature.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Stadtbad Neukölln',
  address: 'Ganghoferstraße 5, 12043 Berlin',
  price: '1.5',
  capacity: '25',
  category: 'indoor',
  description: '3. With its opening in 1914, the public pool was already considered to be among Europe’s most beautiful pools.',
  length: '12.5',
  depth: '1.5',
  width: '5',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Badeschiff',
  address: 'Eichenstraße 7, 12435 Berlin',
  price: '4',
  capacity: '200',
  category: 'outdoor',
  description: '4. The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Olympiadbad',
  address: 'Olympischer Platz 6, 14053 Berlin',
  price: '7.5',
  capacity: '1000',
  category: 'outdoor',
  description: '4. Cool off in the cold-water pool inside. And leave all your cares behind – between sauna sessions or at the end of a sauna visit – in the relaxation room with its aquarium. There is special focus on this in the sanarium (around 60° C) with “aqua viva” colored light and sound simulation as well as birdsong and sounds of nature.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user.id,
  remote_photo_url: ""
},
{
  title: 'Stadtbad Neukölln',
  address: 'Ganghoferstraße 6, 12043 Berlin',
  price: '1.5',
  capacity: '25',
  category: 'indoor',
  description: '4. With its opening in 1914, the public pool was already considered to be among Europe’s most beautiful pools.',
  length: '12.5',
  depth: '1.5',
  width: '5',
  user_id: user.id,
  remote_photo_url: ""
}
])

puts "You have created #{Pool.count} pools."
