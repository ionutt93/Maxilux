class PagesController < ApplicationController
	def home
		@home_link = "active"
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
		@articles_link = ""
	end

	def about_us
		@home_link = ""
		@about_us_link = "active"
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
		@articles_link = ""
	end

	def products
		@home_link = ""
		@about_us_link = ""
		@products_link = "active"
		@contact_link = ""
		@servici_link = ""
		@articles_link = ""
		@albums = Album.paginate(page: params[:page],
														 per_page: 3,
														 order: 'created_at DESC')
	end

	def contact
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = "active"
		@servici_link = ""
		@articles_link = ""
	end

	def servici
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = "active"
		@articles_link = ""
	end

	def articole
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
		@articles_link = "active"
		@articles = Article.paginate(page: params[:page],
																 per_page: 3,
																 order: 'created_at DESC')
	end

	def show
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
		@articles_link = ""

		@album = Album.find(params[:id])
		@photos = @album.photos.paginate(page: params[:page],
														 				 per_page: 2,
														 				 order: 'created_at DESC')
	end

	def show_article
		@home_link = ""
		@about_us_link = ""
		@products_link = ""
		@contact_link = ""
		@servici_link = ""
		@articles_link = ""

		@article = Article.find(params[:id])
	end

end
