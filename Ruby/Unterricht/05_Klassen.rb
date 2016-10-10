class Playlist

	def initialize(name)
		@name = name
		@movies = []
	end
	def add_movie(movie)
		@movies << movie
	end
	def play
		puts "#{@name} Playlist:"
		@movies.each do |movie|
			movie.list_movie
		end
	end


end

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

obj1 = Movie.new("Superman",3)
obj2 = Movie.new("Batman",4)
obj3 = Movie.new("Goonies",1)

playlist1 = Playlist.new("Theo")
playlist1.add_movie(obj1)
playlist1.add_movie(obj2)
playlist1.play

