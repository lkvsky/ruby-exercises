class Book

	attr_accessor :title

	def title
		words = @title.split(" ")
		smallwords = %w{the a an and in of}
		newtitle = []
		words.each do |titleword|
			titleword.capitalize!
			smallwords.each do |smallword|
				if titleword.downcase.match("^#{smallword}$") != nil
	 		    	titleword.downcase!
	 		    	break
				end
			end
			newtitle << titleword
		end
		newtitle[0].capitalize!
		newtitle.join(" ")
	end

end