class Player
	attr_reader :health
	attr_writer :name
	attr_reader :name
	
	def initialize(name, health=100) 
		@name=name
		@health=health
		
	end

	def say_hello
		puts "Ihr Name: #{@name} und health #{@health}"

	end

	def to_s
			length = @name.length
			@health += length
	end


end


player1 = Player.new("Kim",24)
player2 = Player.new("Christian")

puts player1.health
puts player1.name
player1.name = "Hans"
puts player1.name
puts player1.to_s

