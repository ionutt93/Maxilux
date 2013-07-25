class PagesController < ApplicationController
	def home
		@home_link = "active"
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
	end

	def about_us
		@home_link = ""
		@about_us_link = "active"
		@products_link = ""
		@contact_link = ""
	end

	def products
		@home_link = ""
		@about_us_link = ""
		@products_link = "active"
		@contact_link = ""
		@images = Dir.glob("app/assets/images/products1/*.jpg")
	end

	def contact
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = "active"
	end

end
