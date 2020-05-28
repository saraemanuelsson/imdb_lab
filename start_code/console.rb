require('pry')
require_relative('./models/movie')
require_relative('./models/star')
require_relative('./models/casting')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({'title' => 'Titanic', 'genre' => 'Nautical'})

movie1.save()

star1 = Star.new({'first_name' => 'Kate', 'last_name' => 'Winslet'})

star1.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 1000})

casting1.save()

binding.pry

nil