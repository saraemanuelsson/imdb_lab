require('pry')
require_relative('./models/movie')

Movie.delete_all()

movie1 = Movie.new({'title' => 'Titanic', 'genre' => 'Nautical'})

movie1.save()

binding.pry

nil