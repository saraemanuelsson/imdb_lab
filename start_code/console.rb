require('pry')
require_relative('./models/movie')
require_relative('./models/star')

Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({'title' => 'Titanic', 'genre' => 'Nautical'})

movie1.save()

star1 = Star.new({'first_name' => 'Kate', 'last_name' => 'Winslet'})

star1.save()

binding.pry

nil