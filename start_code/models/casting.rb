require_relative('../db/sql_runner')

class Casting

    attr_accessor :fee
    attr_reader :star_id, :movie_id, :id

    def initialize(options)
        @fee = options['fee'].to_i
        @star_id = options['star_id'].to_i
        @movie_id = options['movie_id'].to_i
        @id = options['id'].to_i if options['id']
    end

    def save()
        sql = "INSERT INTO castings (movie_id, star_id, fee) VALUES ($1, $2, $3) RETURNING id"
        values = [@movie_id, @star_id, @fee]
        casting = SqlRunner.run(sql, values)[0];
        @id = casting['id'].to_i
    end

    def self.all()
        sql = "SELECT * FROM castings"
        data = SqlRunner.run(sql)
        return data.map{|casting| Casting.new(casting)}
    end

    def self.delete_all()
        sql = "DELETE FROM castings"
        SqlRunner.run(sql)
    end

end
