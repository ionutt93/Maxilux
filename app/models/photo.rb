class Photo < ActiveRecord::Base
	belongs_to :album
	validates :url, :uniqueness => true
end
