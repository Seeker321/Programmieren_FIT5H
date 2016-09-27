class Movie
	def initialize(pname, rank=2)
		@name=pname
		@rank=rank
	end

	def list_movie
		puts "Movie heißt: #{@name} und der Rank ist #{@rank}"
	end

	def thumps_up(value)
		@rank += value
	end

end

obj = Movie.new("Superman")

obj.list_movie
obj.thumps_up(7)
obj.list_movie