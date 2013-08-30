class Article < ActiveRecord::Base
	validates :title, presence: true, 
										uniqueness: true, 
										length: {maximum: 100}
	validates :author, presence: true,
										 length: {maximum: 100}
	validates :content, presence: true
	
end
