class PagesController < ApplicationController
	def home
	end

	def about_us
	end

	def products
		@images = Dir.glob("app/assets/images/products1/*.jpg")
	end

end
