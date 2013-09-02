class Article < ActiveRecord::Base
	validates :title, presence: true, 
										uniqueness: true, 
										length: {maximum: 100}
	validates :author, presence: true,
										 length: {maximum: 100}
	validates :content, presence: true
	
	def summary(words_nr)
		self.content.split(" ").first(words_nr).join(" ") + "..."
	end

end
