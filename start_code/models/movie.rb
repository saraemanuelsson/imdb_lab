class Movie

    attr_accessor :title, :genre
    attr_reader :id, 

    def initialize (options)
        @title = options['title']
        @genre = options['genre']
        @id = options['id'].to_i if options['id']
    end

    

end
