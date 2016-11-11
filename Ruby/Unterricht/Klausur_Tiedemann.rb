class Bibliothek

	attr_accessor :buecher
	attr_reader :name

		def initialize(name)
			@name = name
			@buecher = Array.new

		end

		def add_book(buch)
			@buecher << buch
				
		end

		def output
			ersteller = ""
			@buecher.each do |val|
				val.autor.each do |autor|
							ersteller = autor.name
				end
				puts "#{ersteller}, #{val.titel} , #{val.gekauft_am}"
			end
		end

		def buch_aktion(jahreszahl)
			unter2 = 0
			zwischen2und5 = 0
			über5 = 0
			arr_unter2 = Array.new
			arr_zwischen2und5 = Array.new
			arr_über5 = Array.new

				@buecher.each do |val|
					differenz = jahreszahl - val.gekauft_am
						

						if differenz <= 2	
							unter2 = unter2 + 1
							arr_unter2 << val
						elsif differenz > 2 && differenz <= 5
							zwischen2und5 = zwischen2und5 + 1
							arr_zwischen2und5 << val
						elsif differenz > 5
							über5 = über5 + 1
							arr_über5 << val
						else
							"Keine korrekte jahreszahl"
						end

				end
				
				if unter2 > 1
					bereich1 = "Bücher"
				else 	
					bereich1 = "Buch"
				end

				if zwischen2und5 > 1
					bereich2 = "Bücher"
				else 	
					bereich2 = "Buch"
				end

				if über5 > 1
					bereich3 = "Bücher"
				else 	
					bereich3 = "Buch"
				end
					

					puts "#{unter2} #{bereich1} bei denen keine Aktion nötig ist:"
					arr_unter2.each do |val|
						ersteller = ""
						val.autor.each do |autor|
							ersteller = autor.name
						end
						puts "#{ersteller}, #{val.titel} , #{val.gekauft_am}"

					end

					puts "#{zwischen2und5} #{bereich2} bei denen eine Kontrolle nötig ist:"
					arr_zwischen2und5.each do |val|
						ersteller = ""
						val.autor.each do |autor|
							ersteller = autor.name
						end
						puts "#{ersteller}, #{val.titel} , #{val.gekauft_am}"

					end

					puts "#{über5} #{bereich3} das in die Restaurierung geht:"
					arr_über5.each do |val|
						ersteller = ""
						val.autor.each do |autor|
							ersteller = autor.name
						end
						puts "#{ersteller}, #{val.titel} , #{val.gekauft_am}"

					end


		end

		

end

class Buch

	attr_accessor :autor, :gekauft_am, :titel

	def initialize(autor, titel, gekauft_am)
		
		@autor = Array.new
		@autor << autor
		@titel = titel
		@gekauft_am = gekauft_am

	end


end

class Autor

	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end

end


class Kunde

	attr_accessor :name, :buecher, :ausgeliehen_am

	def initialize(name, titel, ausgeliehen_am)
		@name = name
		@buecher = Array.new
		@buecher << titel
		@ausgeliehen_am = Array.new
		@ausgeliehen_am << ausgeliehen_am
	end

	def add_book(titel, ausgeliehen_am)
		

			@buecher << titel
			@ausgeliehen_am << ausgeliehen_am

	end

	def show_books
		puts "#{@name} hat #{@ausgeliehen_am.size} Bücher ausgeliehen:"#
		
		if ausgeliehen_am.size > 0

		puts "#{@name} darf die Bücher #{@dauer} Jahre behalten!"
		i = 0
		@buecher.each do |val|
			
			puts "#{val.titel} im Jahre #{ausgeliehen_am[i]}"

				differenz = @jahreszahl - ausgeliehen_am[i]
				if differenz == 0
					puts "#{@name} darf das Buch noch #{@dauer} Jahre behalten!"
				elsif differenz == 1
					puts "#{@name} darf das Buch noch #{@dauer - 1} Jahr behalten!"
				elsif differenz == 2
					puts "#{@name} muss das Buch dieses Jahr abgeben!"
				else 
					puts "Die Abgabefrist ist abgelaufen, das Buch muss abgegeben werden!"
				end

				

			i = i + 1
			
		end

		end
	end

	def frist(dauer, akt_jahreszahl)
		
		@dauer = dauer
		@jahreszahl = akt_jahreszahl
	end

	def abgabe(buch)
		i = @buecher.index(buch)
		@buecher.delete(buch)
		@ausgeliehen_am.delete_at(i)


	end

end

bibliothek = Bibliothek.new("Hamburg")
autor_1 = Autor.new("Maier", "20.03.1980")
buch_1 = Buch.new(autor_1, "Niemand", 2005)
buch_2 = Buch.new(autor_1, "Jeder", 2010)
buch_3 = Buch.new(autor_1, "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein Tag", 2011)


bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

bibliothek.output

bibliothek.buch_aktion(2010)

obj1 = Kunde.new("Hans Meier", buch_1, 2015)
obj1.add_book(buch_2, 2014)
obj1.add_book(buch_3, 2014)
obj1.frist(2, 2015)
obj1.show_books

obj1.abgabe(buch_1)

obj1.show_books

