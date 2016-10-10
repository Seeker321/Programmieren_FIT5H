class Kredit

	attr_accessor :kredit

	def initialize(kunde, jahresgehalt)
		@kunde = kunde
		@Jahresgehalt = jahresgehalt
	end

	def get_kunde
		puts "#{@kunde.get_kunden_daten} Jahresgehalt: #{@Jahresgehalt}"
	end
end

class Kunde

	attr_accessor :name, :gehalt
	attr_writer :adresse


		def initialize(vorname="", name="")
			@name = "#{vorname} ".capitalize + "#{name}".capitalize
		end

		def get_kunden_daten
			"#{@name}, #{@adresse}."
		end
end

kunde1 = Kunde.new("Theo", "Sommer")
kunde1.name = "Theo Sonnenschein"
puts kunde1.name
kunde1.gehalt = "2000"
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"

puts kunde1.get_kunden_daten

kredit1 = Kredit.new(kunde1, "24000")
kredit1.get_kunde
kredit1.kredit = "5000"