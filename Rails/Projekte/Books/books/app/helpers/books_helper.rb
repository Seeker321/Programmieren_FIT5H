module BooksHelper
		def ave(book)
			a=book.likes.count
			b=0
				book.likes.each do |s|
					b=b+s.quality
				end
			c=b/a	
		end
end