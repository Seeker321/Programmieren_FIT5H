class Game
		def initialize(title)
			@title = title
			@Player = []
		end
		def add_player(player)
			@Player << player
		
		end
		def play
			puts "There are #{@Player.size} Players in #{@title}\n"

				@Player.each do |player|
					puts player
				end
				@Player.each do |player|
					puts player.blam
					puts player.woot
					puts player.woot
					puts player
				end
		end
end




class Player
	
	
	def initialize(name, health=100) 
		@name = name
		@health = health
		
	end

	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end



	def blam
			@health -= 10
				if @health <= 0
					@health = 0
						"#{@name} got blamed"
					
				else
					"#{@name} got blamed"
		end
	end

	def woot
		@health += 10
			"#{@name} got wooted"
	end

	def score
		@health + @name.length
	end


end


player1 = Player.new("Moe",24)
player2 = Player.new("Larry",12)
player3 = Player.new("Curly",67)


game1 = Game.new("Knuckleheads")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play




