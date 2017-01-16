module LikesHelper
	def average(book)
		if book.likes.count > 0
		a=book.likes.count
		b=0
			book.likes.each do |s|
				b=b+s.quality
			end
		c=b/a
		else 
			0
		end
	end

end
