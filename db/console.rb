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

artist1 = Artist.new({ 'name' => 'Jeff Bridges'})
artist2 = Artist.new({ 'name' => 'Trampled By Turtles'})

artist1.save
artist2.save


binding.pry
nil
