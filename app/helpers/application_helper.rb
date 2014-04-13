module ApplicationHelper

	def shorten_paragraph words
		truncate words, length:265, omission:'... (read more)'	
	end

end
