class Album < ActiveRecord::Base	
	has_many :photos
	accepts_nested_attributes_for :photos, :allow_destroy => true
	validates :name, :uniqueness => true

	def self.index_all
		albums = Dir.glob("app/assets/images/produse/*")
		albums.each do |album|
			name = album.split("/").last
			new_album = Album.new()
			new_album.name = name
			new_album.save()

			images = Dir.glob("#{album}/*.jpg")
			images.each do |image|
				puts "image name #{image.split('/').last}"
				photo = Photo.create(:name => "#{image.split('/').last}",
													:url => ("/assets/#{image.split('images/').last}"),
													:album => new_album)
			end
			
		end
	end

end

