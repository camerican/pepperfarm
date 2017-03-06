# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def set_image_path image
  File.new( File.join Rails.root, %w(app assets images), image)
end

User.create([{name_first: 'Cam',name_last: 'Crews',username:'camerican',email:'cam@nycda.com',password:'FluffyBunny'
  }])

Item.create([{
    name: 'Espalette',
    cost: 2.05,
    description: 'The Espalette chili pepper, grown from the Basque region in France, can reach up to 400 scoville units.',
    image: set_image_path('basque_pepper.jpg')
  },{
    name: 'Carolina Reaper',
    cost: 5.00,
    description: 'The Carolina Reaper is the hottest chili pepper in the world, reaching up to 2.2 million scoville units.',
    image: set_image_path('carolina_reaper_pepper.jpg')
  },{
    name: 'Cubanelle Pepper',
    cost: 0.75,
    description: 'The Cuban pepper is a sweet pepper clocking in at 1000 scoville units.',
    image: set_image_path('cubanelle_pepper.png'),
    quantity: 1000
  },{
    name: 'Dried Chili Pepper',
    cost: 1.45,
    description: 'Our dried chili peppers are perfect for being ground into spicy seasoning.',
    image: set_image_path('dried_chili.jpg'),
    quantity: 2500
  },{
    name: 'Datil Pepper',
    cost: 3.23,
    description: 'The datil pepper has a fruity flavor and reaches up to 300,000 scoville units.',
    image: set_image_path('datil_pepper.png'),
    quantity: 2500
  },{
    name: 'Purple Bell Pepper',
    cost: 2.30,
    description: 'The purple bell pepper will add color and sweetness to your dishes.',
    image: set_image_path('purple_bell_pepper.jpg'),
    quantity: 2500
  },{
    name: 'Ghost Pepper',
    cost: 4.50,
    description: 'The ghost pepper or bhut jolokia was cultivated in India and exceeds 1 million scoville units.',
    image: set_image_path('ghost_pepper.jpg'),
    quantity: 2500
  },{
    name: 'Fresno Chili Pepper',
    cost: 2.76,
    description: 'The Red Fresno Chili Pepper has similarities to the jalapeño pepper, typically reaching 3000 scoville units.',
    image: set_image_path('red_fresno.jpg'),
    quantity: 2500
  }
])

Shipper.create([{
  name: 'Pineapple Express'
  },{
  name: 'Ber & Alfe Express'
}])


