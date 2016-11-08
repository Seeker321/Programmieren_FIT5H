#1. Erstellen Sie eine Klasse Car mit den Eigenschaften: ps, typ, verbrauch
	#Stellen Sie sicher, dass die Eigenschaft typ beim ersten Buchstaben einen Großbuchstaben erstellt.
	#Stellen Sie sicher, dass bei der Eingabe überprüft wird, ob es sic um einen String handelt, der mindestens 3 Ziffern lang ist.
	#Stellen Sie sicher, dass die Instanzvariable ps nur dann gefüllt wird, wenn es sich um einen positiven Wert größer als null handelt.
#2. Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter zeit, der die Sekundenzahl des Beschleunigungsvorgangs enthält. Ausgegeben 
#wird die Geschwindigkeit in km/Stunden. Die Geschwindigkeit wird errechnet aus PS mal Sekunden geteilt durch 100.
#3. Erstellen Sie einen Konstruktor, der für die Eigenschaft ps einen Wert erwartet, für die eigenschaft typ optional eine Initialisierung ermöglicht.
#4. Legen Sie 3 Objekte von dieser Klasse an: Objekt1: ps:200 typ:"Klaumich" , Objekt2: ps:80 typ:"Hauni", Objekt3: ps:100
#5. Speichern Sie die Obejkte in einem Array und lassen Sie das Array durchlaufen und geben Sie den Typ aus.
#6. Legen Sie drei weitere Objekte von der Klasse Car an. Die Daten stehen in einem Hash, wobei die erste Position den Typ und die zweite 
#Position die PS enthält.
	# vals = {"BMW" => 200, "Trabbi" => 150, "Honda" => 20}
	#Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car Objekt und legen dieses im Array Cars2 ab. 
#7. Erstellen Sie eine Klasse "Driver" mit der Eigenschaft "Name", die im Konstruktor gesetzt werden muss. Es gibt ein Array
#cars, das im Konstruktor initialisiert wird.Es gibt eine Methode add_cars mit der für das Driver Object ein Fahrzeug hinzugefügt werden kann.
#Es gibt eine Ausgabe show_cars die die Fahrzeuge mit der Typenbezeichnung auflistet. Legen Sie ein Obejkt Theo an, ordnen Sie
#von den Car Arrays jeweils das erste dem Driver Objekt zu, lassen Sie die Daten der zugeordneten Fahrzeuge ausgeben.

class Driver 

	def initialize(name)
		@name = name
		@cars = Array.new
	end

	def add_cars(fahrzeug)
		@cars << fahrzeug
	end

	def show_cars
		@cars.each do |val|
				puts val.typ
		end
	end


end


class Car

	attr_accessor :ps, :typ, :verbrauch

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
	end

	def ps=(ps)
		if ps > 0
			@ps = ps
		end
	end

	def typ=(typ)
		if typ.is_a?(String) && typ >= 3
			@typ = typ.capitalize
		end
	end

	def beschleunigen(zeit)
		geschwindigkeit = (@ps * zeit) / 100 
	end

end

objekt1 = Car.new(200, "Klaumich")
objekt2 = Car.new(80, "Hauni")
objekt3 = Car.new(100)


cars = [objekt1, objekt2, objekt3]

cars.each do |val|
		puts val.typ
end

cars2 = Array.new
vals = {"BMW" => 200, "Trabbi" => 150, "Honda" => 20}

vals.each do |key,value|

	cars2 << Car.new(value, key)

end

theo = Driver.new("Theo")
theo.add_cars(cars[0])
theo.add_cars(cars2[0])

theo.show_cars