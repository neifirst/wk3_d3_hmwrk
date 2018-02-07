require("pry")
require_relative("../models/artist.rb")
require_relative("../models/album.rb")


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


artist1.name = 'Tortured By Turtles'
artist1.update

album2.title = 'White Chocolate'
album2.update



binding.pry
nil
