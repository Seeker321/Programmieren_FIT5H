name1 = "Larry"
name2 = "CURLY"
name3 = "Moe"
health = 5

puts "#{name1} has a health of #{health * 12}"
puts "#{name2} has a health of #{health * 25}"

2.times do
puts "#{name3} has a health of #{health *20}".center(50,'*')
end

2.times do
puts "Shemp".ljust(30,'.') + "#{health * 18} health"
end

puts Time.now.strftime("%A %d/%m/%G at %R%P")
