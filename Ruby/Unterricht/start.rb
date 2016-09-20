comment = "Heute ist Dienstag"
3.times do 
	puts comment.upcase

end
#---------------------
var = "Mikey loves Goonies"
puts 'Mickey\'s favorite movie is Goonies' # mit \ wird mit das Anführungszeichen maskiert

movie = "Goonies"

puts "Mickey's favorite movie is \n" + movie # \n = Zeilenumbruch, mit + Variablen anhängen

rank = 10

puts "#{movie} has a rank of #{rank} am #{Time.now}" # #{} gibt den Inhalt der Variable im String aus

