class Player
	def initialize(name, health=100) 
		@name=name
		@health=health
		
	end

	def say_hello
		puts "Ihr Name: #{@name} und health #{@health}"

	end

	def blam
			@health -= 10
			if @health <= 0
				@health = 0
				puts "#{@name} got blamed: #{@health}"
			else
			puts "#{@name} got blamed: #{@health}"
		end
	end

	def woot
		@health += 10
		puts "#{@name} got wooted: #{@health}"
	end


end


player1 = Player.new("Kim",24)
player2 = Player.new("Christian")
player1.say_hello
player2.say_hello

3.times do
player1.blam
end
player2.woot





