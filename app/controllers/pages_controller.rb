class PagesController < ApplicationController
	def home
		@home_link = "active"
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
	end

	def about_us
		@home_link = ""
		@about_us_link = "active"
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
	end

	def products
		@home_link = ""
		@about_us_link = ""
		@products_link = "active"
		@contact_link = ""
		@servici_link = ""
		@images = Dir.glob("app/assets/images/products1/*.jpg")
		@products = Dir.glob("app/assets/images/produse/*")
	end

	def contact
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = "active"
		@servici_link = ""
	end

	def servici
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = "active"
	end

end
