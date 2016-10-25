###1a,b
arr = (15..20)
arr.each do |v|
		puts v
end

###1c,d,e
hash = Hash.new

arr.each do |val|
	hash[val] = rand(100) + 100
end

hash.each do |key,val|
			if key > 150
				puts "Index: #{key} - Wert: #{val}. WOW"
			else
				puts "Index: #{key} - Wert: #{val}"
			end
end
###1f
quadrat = Array.new
arr.each do |val|
	quadrat << val * val
end
puts quadrat
###1g
hashquadrat = Hash.new
arr.each do |val|
	hashquadrat[val] = val * val
end
puts hashquadrat

###2a,c
prim = Array.new
	prim = %w[2 3 5 7 11 13 17 19 23 29]

prims = Hash.new
prim.each do |pri|
	if pri.to_i < 10
		puts "#{pri} ist einstellig"
			prims[pri] = "ist einstellig"
	elsif pri.to_i >= 10 
		puts "#{pri} ist zweistellig"
			prims[pri] = "ist zweistellig"
	end
end
puts prims

###2b	
personen = Hash.new
personen = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
	personen.each do |key,val|
		puts "#{key}: #{val} \n"
	end

###2d
einstellig = ""
zweistellig = ""
prims.each do |key,val|
	if val == "ist einstellig"
		einstellig += "#{key} "
	end
	if val == "ist zweistellig"
		zweistellig += "#{key} "
	end
end
puts "Einstellig: #{einstellig}"
puts "zweistellig: #{zweistellig}"

###2e
adressen = Array.new

personen = Hash.new
personen = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
adressen << personen

personen = Hash.new
personen = {vorname: "Hans", nachname: "Mann", stadt: "Hamburg"}
adressen << personen

personen = Hash.new
personen = {vorname: "Angie", nachname: "Merkel", stadt: "Berlin"}
adressen << personen

count = 0
adressen.each do |var|
	count += 1
	puts "#{count.to_s}. Person\n"

		var.each do |val,key| 
			puts "#{val}: #{key}\n"
		end
end

###Worte
###2a,b
worte = Array.new 
worte = %w[Pflaume Bauschaum Auster]

worte.each do |var|
	if var.include?("aus") || var.include?("Aus")
		puts var
	end
end

###2c
puts worte.sort_by {|x| x.length}

###2d
liste = Hash.new
	
	worte.each do |val|
		var = val.length

		liste[val] = var
	end
puts liste 

###3a

lotto = Array.new
lotto1 = Array.new
lotto2 = Array.new
person = Hash.new

until lotto.size == 7 do 
	lotto << rand(1..49)
	lotto1 << rand(1..49)
	lotto2 << rand(1..49)
end

person = {Peter: lotto, Paul: lotto1, Mary: lotto2}

puts "lotto = #{person}"

###4.
str_1 = "Programmieren, Federball, Whisky"
str_2 = "Fussball, Bier, Programmieren"

arr1 = str_1.split(', ')
arr2 = str_2.split(', ')


match = Array.new
diff = Array.new

ergebnis = Hash.new


i = 0

while i < arr1.size do 

	arr1.each do |var|
		if var == arr2[i]
			match << arr2[i]		

		end
	end
	i += 1
end

u = 0 

while u < match.size do

	arr1.each do |val|
		if match[u] != val
			diff << val
		end
	end
	arr2.each do |val|
		if match [u] != val
			diff << val
		end
	end

	u+=1

end



ergebnis[:diff] = diff
ergebnis[:match] = match

puts "ergebnis = #{ergebnis}"

