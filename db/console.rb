require("pry")
require_relative("../models/artist.rb")
require_relative("../models/album.rb")

# PizzaOrder.delete_all()
# Customer.delete_all()
#
# customer1 = Customer.new({ 'name' => 'Jeff Bridges' })
#
# customer1.save()
#
# order1 = PizzaOrder.new({
#   'customer_id' => customer1.id,
#   'topping' => 'All the meat',
#   'quantity' => 2
#   })
#
#   order1.save()


Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({ 'name' => 'Trampled By Turtles'})
artist2 = Artist.new({ 'name' => 'NOFX'})

artist1.save
artist2.save


album1 = Album.new({
  'title' => 'Songs From A Ghost Town',
  'genre' => 'Bluegrass',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'title' => 'White Trash',
  'genre' => 'Skate Punk',
  'artist_id' => artist2.id
  })



  album1.save
  album2.save





binding.pry
nil
