class Calculator

		def initialize(zahl1, zahl2)
			@zahl1 = zahl1
			@zahl2 = zahl2
			
		end

		def add
			@Ergebnis=@zahl1 + @zahl2
			puts @Ergebnis
		end
		def sub
			@Ergebnis= @zahl1 - @zahl2
			puts @Ergebnis
		end
end

obj1 = Calculator.new(7,3)
obj2 = Calculator.new(23,12)
obj3 = Calculator.new(12,34)

objects = [obj1,obj2,obj3]

objects.each do |ob|

ob.add
ob.sub
end