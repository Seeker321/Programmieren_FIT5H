def say_hello(name="KIM", health=100)
	puts "Ich bin #{name} mit einem Wert von #{health} um #{set_time}"
end

def set_time
		Time.now.strftime("%d.%m.%Y")
end

say_hello