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


user1 = User.create(email: 'get1@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/40575245.jpg")
user2 = User.create(email: 'get2@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/uqmbzfszhjliu585pien.jpg")
user3 = User.create(email: 'get3@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/40687085.jpg")
user4 = User.create(email: 'get4@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/pqpavjwdyefnlr3jtkie.jpg")
user5 = User.create(email: 'get5@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/39156063.jpg")
user6 = User.create(email: 'get6@wet.com', password: '123456', remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534516902/36562150.jpg")

puts "Created #{User.count} users"


puts "Creating pools..."

pools = Pool.create([
{
  title: 'Badeschiff',
  address: 'Eichenstraße 4, 12435 Berlin',
  price: '250',
  capacity: '200',
  category: 'outdoor',
  description: 'The Badeschiff is a floating public swimming pool in Berlin, the capital city of Germany. Situated in the East Harbour section of the River Spree, the Badeschiff allows citizens to swim in a sanitary environment near the river.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user1.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/b109c8a7e46e33e798c848aad6574913.jpg"
},
{
  title: 'Olympiabad',
  address: 'Olympischer Platz 3, 14053 Berlin',
  price: '550',
  capacity: '500',
  category: 'outdoor',
  description: 'Cool off in the cold-water pool inside. And leave all your cares behind – between sauna sessions or at the end of a sauna visit – in the relaxation room with its aquarium. There is special focus on this in the sanarium (around 60° C) with “aqua viva” colored light and sound simulation as well as birdsong and sounds of nature.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user2.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517546/e16a1d648c30a0e5a0414cd1a1d446da43788e19.jpg"
},
{
  title: 'Stadtbad Neukölln',
  address: 'Ganghoferstraße 3, 12043 Berlin',
  price: '95',
  capacity: '25',
  category: 'indoor',
  description: 'With its opening in 1914, the public pool was already considered to be among Europe’s most beautiful pools.',
  length: '25',
  depth: '5',
  width: '10',
  user_id: user3.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517546/Fashionable-Luxury-Pool.jpg"
},
{
  title: 'Sommerbad Kreuzberg',
  address: 'Prinzenstraße 113-119, 10969 Berlin',
  price: '175',
  capacity: '350',
  category: 'outdoor',
  description: 'The signature piece of this popular venue are the super fast water slide and 2 pools of 50 metres length if you really want to swim. For children, the Prinzenbad offers a splash pool and a water playground, where the kids can play in the mud as much as they want to. Just like Strandbad Wannsee, the Prinzenbad is one of the Berlin swimming classics, however only about half as old as the Wannsee one. It was founded in 1965 and underwent refurbishment in the 1980s. In 2013 a new heating for the bathing water was installed and also the roof of the main building was redone.',
  length: '75',
  depth: '3',
  width: '15',
  user_id: user4.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/49c65fd393c10ee8bd018e35704eb3bc.jpg"
},
{
  title: 'Vabali Spa Berlin',
  address: 'Seydlitzstraße 6, 10557 Berlin',
  price: '2500',
  capacity: '900',
  category: 'outdoor',
  description: 'In the middle of the hustle and bustle of metropolitan Berlin, Vabali Spa offers you a place of rest and relaxation, expertly designed to bring mind, body, and spirit together in harmony.',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user5.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/driving-force.jpg"
},
{
  title: 'Fischers Fritze',
  address: 'Stern-Center 4, 14480 Potsdam',
  price: '450',
  capacity: '80',
  category: 'outdoor',
  description: 'This place is only for super locals. You will swim with real fishermen, mermaids and Nemo. Beware! Flipper is in bad mood atm. This last sentence is just a placeholder because I ran out of fucking brain power!',
  length: '32',
  depth: '5',
  width: '15',
  user_id: user6.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/TJG_4413-2890x1559.jpg"
},
{
  title: 'Nasse Lümmel',
  address: ' Babelsberger Str. 4-6, 14473 Potsdam',
  price: '300',
  capacity: '1000',
  category: 'indoor',
  description: 'This place is only for super locals. You will swim with real fishermen, mermaids and Nemo. Beware! Flipper is in bad mood atm. This last sentence is just a placeholder because I ran out of fucking brain power!',
  length: '100',
  depth: '7.5',
  width: '25',
  user_id: user1.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/Hearst-Castle-2.jpg"
},
{
  title: 'Neuköllner Waschlappen',
  address: 'Ganghoferstraße 3, 12043 Berlin',
  price: '33',
  capacity: '25',
  category: 'indoor',
  description: 'This place is only for wasted people. This sentence is only for people who always read reviews bis zum bitteren Ende. This last sentence is only a fucking placeholder because I ran out of fucking ideas.',
  length: '12.5',
  depth: '1.5',
  width: '5',
  user_id: user2.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517545/Great-Falls-VA.jpg"
},
{
  title: 'Lustvoller Ludenplansch',
  address: 'Friedrichstraße 246, 10969 Berlin',
  price: '2',
  capacity: '2',
  category: 'indoor',
  description: 'Dieses sehr dezente Etablissment lädt ein am Wochenende mit seinem liebsten Luden lustvolle Planscheinheiten zu erleben. Das obligatorische Stullen schmieren mit Stullen Andi ist immer ein Highlight. Unsere Stuten sind noch heute ganz begeistert.',
  length: '50',
  depth: '5',
  width: '15',
  user_id: user3.id,
  remote_photo_url: "https://res.cloudinary.com/dmiexdhni/image/upload/v1534517544/FF037.jpg"
}
])

puts "You have created #{Pool.count} pools."
