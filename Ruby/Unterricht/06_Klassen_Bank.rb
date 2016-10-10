class Customer



	def initialize(bank_account, lastname="")
		@bank_account = bank_account
		@lastname = lastname
		
	end

	def set_street(pstreet)
		@street = pstreet
	end
	def set_lastname(plastname)
		@lastname = plastname
	end
	def set_firstname(pfirstname)
		@firstname = pfirstname
	end
	def set_city(pcity)
		@city = pcity
	end
	def get_street
		puts @street
	end
	def get_firstname
		puts @firstname
	end
	def get_lastname
		puts @lastname
	end
	def get_city
		puts @city
	end

	def print_address
		puts "Konto:".ljust(15,'.') + "#{@bank_account}"
		puts "Name:".ljust(15,'.') + "#{@firstname} #{@lastname}"
		puts "Strasse:".ljust(15,'.') + "#{@street}"
		puts "Ort:".ljust(15,'.') + "#{@city}"
	end

end

obj = Customer.new(1111)
obj.set_city("Sirksfelde")
obj.set_firstname("Kim")
obj.set_street("Schulstraße 18")
obj.set_lastname("Tiedemann")

obj.get_street
obj.get_city
obj.get_firstname
obj.get_lastname

obj.print_address
